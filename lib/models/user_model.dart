import 'package:equatable/equatable.dart';
import 'package:flutter/cupertino.dart';

class User extends Equatable {
  final int id;
  final String name;
  final int age;
  final List<String> imageUrls;
  final String interest;
  final String bio;
  final List<String> atributes;

  const User({
    required this.id,
    required this.name,
    required this.age,
    required this.imageUrls,
    required this.interest,
    required this.bio,
    required this.atributes,
  });

  @override
  // TODO: implement props
  List<Object?> get props => [
        id,
        name,
        age,
        imageUrls,
        interest,
        bio,
        atributes,
      ];

  static List<User> users = [
    const User(
      id: 1,
      name: 'Juan',
      age: 22,
      imageUrls: [
        'https://static8.depositphotos.com/1057741/1041/i/450/depositphotos_10415184-stock-photo-golden-retriever-dog-sitting-on.jpg',
        'https://cl.linkedin.com/company/emprendify',
      ],
      interest: 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Quisque vitae hendrerit turpis. Cras pharetra dapibus purus. Cras eu vestibulum erat. Nulla fermentum egestas lacinia. Curabitur a porta turpis. In eu hendrerit lacus. Fusce non mi sed sem volutpat efficitur. Praesent non lobortis enim. Morbi luctus nulla nec velit lobortis sodales.',
      bio: 'SOY JUAN ',
      atributes: [
        'Apto para una pareja',
        'soltero'
      ],
    ),
    const User(
      id: 2,
      name: 'Tomas',
      age: 23,
      imageUrls: [
        'https://atlasanimal.com/wp-content/uploads/2021/02/cacatua.jpg.webp',
        'https://cl.linkedin.com/in/antonio-flores-torres-05b5301b4'
      ],
      interest: 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Quisque vitae hendrerit turpis. Cras pharetra dapibus purus. Cras eu vestibulum erat. Nulla fermentum egestas lacinia. Curabitur a porta turpis. In eu hendrerit lacus. Fusce non mi sed sem volutpat efficitur. Praesent non lobortis enim. Morbi luctus nulla nec velit lobortis sodales.',
      bio: 'ME GUSTAN LOS PAJAROS',
      atributes: [
        'Apto para una pareja',
        'soltero'
      ],
    ),
    const User(
      id: 3,
      name: 'nicolas',
      age: 23,
      imageUrls: [
        'https://static8.depositphotos.com/1057741/1041/i/450/depositphotos_10415184-stock-photo-golden-retriever-dog-sitting-on.jpg',
        'https://cl.linkedin.com/in/antonio-flores-torres-05b5301b4'
      ],
      interest: 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Quisque vitae hendrerit turpis. Cras pharetra dapibus purus. Cras eu vestibulum erat. Nulla fermentum egestas lacinia. Curabitur a porta turpis. In eu hendrerit lacus. Fusce non mi sed sem volutpat efficitur. Praesent non lobortis enim. Morbi luctus nulla nec velit lobortis sodales.',
      bio: 'ME GUSTAN LOS no cacho',
      atributes: [
        'Apto para una pareja',
        'soltero'
      ],
    ),
    const User(
      id: 4,
      name: 'chapa',
      age: 23,
      imageUrls: [
        'https://static8.depositphotos.com/1057741/1041/i/450/depositphotos_10415184-stock-photo-golden-retriever-dog-sitting-on.jpg',
        'https://cl.linkedin.com/in/antonio-flores-torres-05b5301b4'
      ],
      interest: 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Quisque vitae hendrerit turpis. Cras pharetra dapibus purus. Cras eu vestibulum erat. Nulla fermentum egestas lacinia. Curabitur a porta turpis. In eu hendrerit lacus. Fusce non mi sed sem volutpat efficitur. Praesent non lobortis enim. Morbi luctus nulla nec velit lobortis sodales.',
      bio: 'ME GUSTAN LOS no cacho',
      atributes: [
        'Apto para una pareja',
        'soltero'
      ],
    ),
    const User(
      id: 5,
      name: 'nicolas',
      age: 23,
      imageUrls: [
        'https://static8.depositphotos.com/1057741/1041/i/450/depositphotos_10415184-stock-photo-golden-retriever-dog-sitting-on.jpg',
        'https://cl.linkedin.com/in/antonio-flores-torres-05b5301b4'
      ],
      interest: 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Quisque vitae hendrerit turpis. Cras pharetra dapibus purus. Cras eu vestibulum erat. Nulla fermentum egestas lacinia. Curabitur a porta turpis. In eu hendrerit lacus. Fusce non mi sed sem volutpat efficitur. Praesent non lobortis enim. Morbi luctus nulla nec velit lobortis sodales.',
      bio: 'ME GUSTAN LOS no cacho',
      atributes: [
        'Apto para una pareja',
        'soltero'
      ],
    ),
    const User(
      id: 6,
      name: 'juan',
      age: 23,
      imageUrls: [
        'https://static8.depositphotos.com/1057741/1041/i/450/depositphotos_10415184-stock-photo-golden-retriever-dog-sitting-on.jpg',
        'https://cl.linkedin.com/in/antonio-flores-torres-05b5301b4'
      ],
      interest: 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Quisque vitae hendrerit turpis. Cras pharetra dapibus purus. Cras eu vestibulum erat. Nulla fermentum egestas lacinia. Curabitur a porta turpis. In eu hendrerit lacus. Fusce non mi sed sem volutpat efficitur. Praesent non lobortis enim. Morbi luctus nulla nec velit lobortis sodales.',
      bio: 'ME GUSTAN LOS no cacho',
      atributes: [
        'Apto para una pareja',
        'soltero'
      ],
    ),
    const User(
      id: 7,
      name: 'nicolas',
      age: 23,
      imageUrls: [
        'https://static8.depositphotos.com/1057741/1041/i/450/depositphotos_10415184-stock-photo-golden-retriever-dog-sitting-on.jpg',
        'https://cl.linkedin.com/in/antonio-flores-torres-05b5301b4'
      ],
      interest: 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Quisque vitae hendrerit turpis. Cras pharetra dapibus purus. Cras eu vestibulum erat. Nulla fermentum egestas lacinia. Curabitur a porta turpis. In eu hendrerit lacus. Fusce non mi sed sem volutpat efficitur. Praesent non lobortis enim. Morbi luctus nulla nec velit lobortis sodales.',
      bio: 'ME GUSTAN LOS no cacho',
      atributes: [
        'Apto para una pareja',
        'soltero'
      ],
    )
  ];
}
