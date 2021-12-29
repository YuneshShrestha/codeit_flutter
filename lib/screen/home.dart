import 'package:flutter/material.dart';

class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Hello"),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            const Image(
                image: NetworkImage(
                    'https://images.pexels.com/photos/167699/pexels-photo-167699.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=650&w=940')),
            ListTile(
              leading: const Icon(Icons.verified_user),
              title: const Text("User"),
              subtitle: const Text("Location"),
              trailing: TextButton(onPressed: () {}, child: const Text("View")),
            ),
            const Card(
              elevation: 0,
              child: Padding(
                padding: EdgeInsets.all(8.0),
                child: Text(
                  "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.",
                  maxLines: 3,
                  overflow: TextOverflow.ellipsis,
                ),
              ),
            ),
            ElevatedButton(
              onPressed: () {},
              child: const Text("Hi"),
            ),
            const CircularProgressIndicator.adaptive(),
            Container(
              width: MediaQuery.of(context).size.width,
              height: 20,
              color: Colors.amber,
              // Fitted Box kura haru atauna
              child: const FittedBox(
                child: Text(
                  "Hello World",
                  style: TextStyle(fontSize: 30),
                ),
              ),
            ),
            ElevatedButton.icon(
                onPressed: () {},
                icon: const Icon(Icons.send),
                label: const Text("Send")),
            MaterialButton(
              onPressed: () {},
              child: const Text("Material Button"),
            ),
            TextButton(
              onPressed: () {},
              child: const Text("Text Button"),
            ),
            IconButton(onPressed: () {}, icon: const Icon(Icons.save)),
            Wrap(
              children: [
                card("images/logo.png"),
                card(""),
                card(""),
                card(""),
                card(""),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

Widget card(image) {
  return Padding(
    padding: const EdgeInsets.all(2.0),
    child: Card(
        color: Colors.black,
        child: Column(
          children: [
            image == ""
                ? const Text(
                    "No Image",
                    style: TextStyle(color: Colors.white),
                  )
                : Image.asset(image),
            const Text(
              "Hello World",
              style: TextStyle(color: Colors.white),
            ),
          ],
        )),
  );
}
