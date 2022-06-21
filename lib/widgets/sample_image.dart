import 'package:flutter/material.dart';

class SampleImage extends StatelessWidget {
  const SampleImage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Center(
      child: CircleAvatar(
        radius: 150,
        child: CircleAvatar(
          radius: 140,
          backgroundImage: AssetImage(
            'assets/images/avatar.png',
          ),
        ),
      ),
    );
  }
}





















/**
 * SizedBox(
        width: 100,
        height: 100,
        child: ClipOval(
          child: Image.network(
            'https://storage.googleapis.com/cms-storage-bucket/2c3d5baa79bb1e48c6e3.png',
            fit: BoxFit.cover,
          ),
        ),
      ),
 */

/**
 * Container(
        width: 200,
        height: 200,
        decoration: BoxDecoration(
          color: Colors.purple,
          borderRadius: BorderRadius.circular(100),
          image: const DecorationImage(
            fit: BoxFit.cover,
            image: AssetImage('assets/images/desktop.png'),
          ),
        ),
      ),
 */

/**
 * Container(
        width: 200,
        height: 200,
        decoration: BoxDecoration(
          color: Colors.purple,
          borderRadius: BorderRadius.circular(100),
          image: const DecorationImage(
            image: NetworkImage(
                'https://storage.googleapis.com/cms-storage-bucket/2c3d5baa79bb1e48c6e3.png'),
          ),
        ),
      ),
 */

/**
 * Image.asset(
          'assets/images/desktop.png',
          repeat: ImageRepeat.repeat,
        ),
 */

/**
 * Image.network(
          'https://storage.googleapis.com/cms-storage-bucket/2c3d5baa79bb1e48c6e3.png',
          repeat: ImageRepeat.repeat,
        ),
 */

/**
 * Image.network(
          'https://storage.googleapis.com/cms-storage-bucket/2c3d5baa79bb1e48c6e3.png',
          fit: BoxFit.contain,
        ),
 */

/**
 * Image.network(
          'https://storage.googleapis.com/cms-storage-bucket/2c3d5baa79bb1e48c6e3.png',
          alignment: Alignment.bottomCenter,
          color: Colors.yellow,
          colorBlendMode: BlendMode.darken,
        ),
 */