#!/usr/bin/env python
import rospy
import smach
import ltm_addons.smach as ltm

class SampleState(smach.State):
    def __init__(self, text=""):
        smach.State.__init__(self, outcomes=['succeeded'])
        ltm.register_state(self, ["sample_tag"])
        
    def execute(self, userdata):
        return 'succeeded'

if __name__ == '__main__':
    rospy.init_node('sample_machine_node')

    # Build machine
    sm = smach.StateMachine(outcomes=['succeeded'])
    ltm.register_state(sm, ["a_tag", "other_tag"])
    with sm:
        smach.StateMachine.add('FOO', SampleState(),
            transitions={'succeeded': 'BAR'})
        smach.StateMachine.add('BAR', SampleState(),
            transitions={'succeeded': 'succeeded'})
    
    # Setup LTM callbacks
    ltm.setup(sm)

    # RUN
    sm.execute()
