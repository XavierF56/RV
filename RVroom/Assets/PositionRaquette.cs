using UnityEngine;
using System.Collections;

public class PositionRaquette : MonoBehaviour {

	GameObject targetObject1, targetObject2, targetObject3;
	float i;

	// Use this for initialization
	void Start () {
		targetObject1 = GameObject.Find ("HandNode");
		targetObject2 = GameObject.Find ("WristNode");
		targetObject3 = GameObject.Find ("ElbowNode");

		i = 0f;
	}
	
	// Update is called once per frame
	void Update () {
		transform.position = targetObject1.transform.position;
		float x = targetObject3.transform.position.x - targetObject2.transform.position.x;
		float y = targetObject3.transform.position.y - targetObject2.transform.position.y;
		float z = targetObject3.transform.position.z - targetObject2.transform.position.z;
		transform.forward = new Vector3(x , y , z);// + new Vector3(0,0,90f);
		transform.TransformDirection(new Vector3(90f, 0f, 0f));
		print (transform.forward);
	}
}
