using UnityEngine;
using System.Collections;

public class Raquette : MonoBehaviour {

	float initial_mouse_x;
	float initial_mouse_y;


	float initial_x;
	float initial_y;

	// Use this for initialization
	void Start () {
		initial_mouse_x = Input.mousePosition.x;
		initial_mouse_y = Input.mousePosition.y;

		initial_x = rigidbody.position.x;
		initial_y = rigidbody.position.y;
	}
	
	// Update is called once per frame
	void Update () {

		int tresh = 5;
		int div = 100;
		float x = rigidbody.velocity.x;
		float y = rigidbody.velocity.y;
		float z = rigidbody.velocity.z;

		float z_pos = rigidbody.position.z;

		//rigidbody.position = new Vector3 (initial_x - (Input.mousePosition.x - initial_mouse_x)/div, (Input.mousePosition.y - initial_mouse_y)/div + initial_y, z_pos);

		Vector3 speed = new Vector3(initial_x - (Input.mousePosition.x - initial_mouse_x)/div, (Input.mousePosition.y - initial_mouse_y)/div + initial_y, z_pos);
		rigidbody.MovePosition(rigidbody.position + speed);

		if (Input.GetKeyDown(KeyCode.UpArrow)) {
			rigidbody.velocity = new Vector3(x,y,z-tresh);
		} else if (Input.GetKeyDown(KeyCode.DownArrow)) {
			rigidbody.velocity = new Vector3(x,y,z+tresh);
		}
	}
}
