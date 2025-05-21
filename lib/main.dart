import 'package:animate_do/animate_do.dart';
import 'package:flutter/material.dart';

void main() => runApp(
  MaterialApp(
    debugShowCheckedModeBanner: false,
    home: HomePage(),
  )
);

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> with SingleTickerProviderStateMixin {
  late PageController _pageController;
  int totalPage = 4;

  void _onScroll() {}

  @override
  void initState() {
    _pageController = PageController(initialPage: 0)..addListener(_onScroll);
    super.initState();
  }

  @override
  void dispose() {
    _pageController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PageView(
        controller: _pageController,
        children: <Widget>[
          makePage(
            page: 1,
            image: 'https://private-user-images.githubusercontent.com/167555295/445266156-c45a343b-2583-4e8f-b639-04658e53843c.png?jwt=eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJnaXRodWIuY29tIiwiYXVkIjoicmF3LmdpdGh1YnVzZXJjb250ZW50LmNvbSIsImtleSI6ImtleTUiLCJleHAiOjE3NDc4MzcyMjcsIm5iZiI6MTc0NzgzNjkyNywicGF0aCI6Ii8xNjc1NTUyOTUvNDQ1MjY2MTU2LWM0NWEzNDNiLTI1ODMtNGU4Zi1iNjM5LTA0NjU4ZTUzODQzYy5wbmc_WC1BbXotQWxnb3JpdGhtPUFXUzQtSE1BQy1TSEEyNTYmWC1BbXotQ3JlZGVudGlhbD1BS0lBVkNPRFlMU0E1M1BRSzRaQSUyRjIwMjUwNTIxJTJGdXMtZWFzdC0xJTJGczMlMkZhd3M0X3JlcXVlc3QmWC1BbXotRGF0ZT0yMDI1MDUyMVQxNDE1MjdaJlgtQW16LUV4cGlyZXM9MzAwJlgtQW16LVNpZ25hdHVyZT0wYTA1ZjdlZjk3NzQ0ZDI4YzRiZWI3OWFhMmJkZGNiOTBkNmMzODMxNjRkODRlN2UwYmRkNjcwYWFjYWIyMTZiJlgtQW16LVNpZ25lZEhlYWRlcnM9aG9zdCJ9.8e4keqvv7uJLQ_b605DNFRKkeI0b29nqvmAmrNC-3Vk',
            title: 'BOSS',
            description: 'Los BOSS no nacen. Se hacen'
          ),
          makePage(
            page: 2,
            image: 'https://private-user-images.githubusercontent.com/167555295/445259483-72c63f07-2dca-4dd4-b56b-8f9803f6b932.png?jwt=eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJnaXRodWIuY29tIiwiYXVkIjoicmF3LmdpdGh1YnVzZXJjb250ZW50LmNvbSIsImtleSI6ImtleTUiLCJleHAiOjE3NDc4MzcyMjcsIm5iZiI6MTc0NzgzNjkyNywicGF0aCI6Ii8xNjc1NTUyOTUvNDQ1MjU5NDgzLTcyYzYzZjA3LTJkY2EtNGRkNC1iNTZiLThmOTgwM2Y2YjkzMi5wbmc_WC1BbXotQWxnb3JpdGhtPUFXUzQtSE1BQy1TSEEyNTYmWC1BbXotQ3JlZGVudGlhbD1BS0lBVkNPRFlMU0E1M1BRSzRaQSUyRjIwMjUwNTIxJTJGdXMtZWFzdC0xJTJGczMlMkZhd3M0X3JlcXVlc3QmWC1BbXotRGF0ZT0yMDI1MDUyMVQxNDE1MjdaJlgtQW16LUV4cGlyZXM9MzAwJlgtQW16LVNpZ25hdHVyZT1kNmEwMjI1MzYwOWMxNmMwYTEwOTE2MjEyODExYTc5MDU5ZDlmMmQ3MDk0MmY1NTczYjMzN2IxYTU3ODY4MDFjJlgtQW16LVNpZ25lZEhlYWRlcnM9aG9zdCJ9.neID6Z_Vg58pErbuFTDfYF1RDbc1jtUbry7S4kG98x4',
            title: 'Sauvage',
            description: 'Hay clásicos que nunca pasan de moda'
          ),
          makePage(
            page: 3,
            image: 'https://private-user-images.githubusercontent.com/167555295/445267927-e9305caa-8da0-4185-b68a-dd6861325755.png?jwt=eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJnaXRodWIuY29tIiwiYXVkIjoicmF3LmdpdGh1YnVzZXJjb250ZW50LmNvbSIsImtleSI6ImtleTUiLCJleHAiOjE3NDc4MzcyMjcsIm5iZiI6MTc0NzgzNjkyNywicGF0aCI6Ii8xNjc1NTUyOTUvNDQ1MjY3OTI3LWU5MzA1Y2FhLThkYTAtNDE4NS1iNjhhLWRkNjg2MTMyNTc1NS5wbmc_WC1BbXotQWxnb3JpdGhtPUFXUzQtSE1BQy1TSEEyNTYmWC1BbXotQ3JlZGVudGlhbD1BS0lBVkNPRFlMU0E1M1BRSzRaQSUyRjIwMjUwNTIxJTJGdXMtZWFzdC0xJTJGczMlMkZhd3M0X3JlcXVlc3QmWC1BbXotRGF0ZT0yMDI1MDUyMVQxNDE1MjdaJlgtQW16LUV4cGlyZXM9MzAwJlgtQW16LVNpZ25hdHVyZT0wMDFiZWY2ODdiOTQ4ZjEwZDJmNDdiYTdkZWZlOGE0MjY5OWExOWM0ZTQzMjNiNjUzOGE1OTM2ZThmNjZmZmQ5JlgtQW16LVNpZ25lZEhlYWRlcnM9aG9zdCJ9.UsYYTTuI-TmZlHmtjcXEr9UD1B6FvHqH033dwDeWCDw',
            title: 'Versace',
            description: "El estilo solo tiene sentido si es el suyo"
          ),
          makePage(
            page: 4,
            image: 'https://private-user-images.githubusercontent.com/167555295/445260246-ddc0a632-9b89-46b0-bb94-7b9a2dca705c.png?jwt=eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJnaXRodWIuY29tIiwiYXVkIjoicmF3LmdpdGh1YnVzZXJjb250ZW50LmNvbSIsImtleSI6ImtleTUiLCJleHAiOjE3NDc4MzcyMjcsIm5iZiI6MTc0NzgzNjkyNywicGF0aCI6Ii8xNjc1NTUyOTUvNDQ1MjYwMjQ2LWRkYzBhNjMyLTliODktNDZiMC1iYjk0LTdiOWEyZGNhNzA1Yy5wbmc_WC1BbXotQWxnb3JpdGhtPUFXUzQtSE1BQy1TSEEyNTYmWC1BbXotQ3JlZGVudGlhbD1BS0lBVkNPRFlMU0E1M1BRSzRaQSUyRjIwMjUwNTIxJTJGdXMtZWFzdC0xJTJGczMlMkZhd3M0X3JlcXVlc3QmWC1BbXotRGF0ZT0yMDI1MDUyMVQxNDE1MjdaJlgtQW16LUV4cGlyZXM9MzAwJlgtQW16LVNpZ25hdHVyZT01MDVjMDdjMTZjYmExNzExNmNkMTU5ZjQ5OWMyMDUyMTcyODY5YjBlOGJjMWRmNjZhZDRiYzk2MTMxNTEzY2MxJlgtQW16LVNpZ25lZEhlYWRlcnM9aG9zdCJ9.39J8IJcJA1UeESWp2Pzre3EdHXInlQP8jmw5kF0TSxo',
            title: 'khamrah',
            description: "es una creación esencial inspirada en el término  que significa pasión y energía"
          ),
        ],
      ),
    );
  }

  Widget makePage({required dynamic image, required String title, required String description, required int page}) {
    return Container(
      decoration: BoxDecoration(
        image: DecorationImage(
          image: image.toString().startsWith('http')
              ? NetworkImage(image)
              : NetworkImage(image) as ImageProvider,
          fit: BoxFit.cover,
        ),
      ),
      child: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.bottomRight,
            stops: [0.3, 0.9],
            colors: [
              Colors.black.withOpacity(.9),
              Colors.black.withOpacity(.2),
            ]
          )
        ),
        child: Padding(
          padding: const EdgeInsets.all(20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              const SizedBox(height: 40),
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                crossAxisAlignment: CrossAxisAlignment.baseline,
                textBaseline: TextBaseline.alphabetic,
                children: <Widget>[
                  FadeInUp(child: Text(page.toString(), style: const TextStyle(color: Colors.white, fontSize: 30, fontWeight: FontWeight.bold))),
                  Text('/$totalPage', style: const TextStyle(color: Colors.white, fontSize: 15)),
                ],
              ),
              Expanded(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.end,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    FadeInUp(
                      child: Text(
                        title,
                        style: const TextStyle(color: Colors.white, fontSize: 50, height: 1.2, fontWeight: FontWeight.bold),
                      ),
                    ),
                    const SizedBox(height: 20),
                    FadeInUp(
                      child: Row(
                        children: <Widget>[
                          for (int i = 0; i < 4; i++)
                            Container(
                              margin: const EdgeInsets.only(right: 3),
                              child: const Icon(Icons.star, color: Colors.yellow, size: 15),
                            ),
                          Container(
                            margin: const EdgeInsets.only(right: 5),
                            child: const Icon(Icons.star, color: Colors.grey, size: 15),
                          ),
                          const Text('4.0', style: TextStyle(color: Colors.white70)),
                          const Text('(2300)', style: TextStyle(color: Colors.white38, fontSize: 12)),
                        ],
                      ),
                    ),
                    const SizedBox(height: 20),
                    FadeInUp(
                      child: Padding(
                        padding: const EdgeInsets.only(right: 50),
                        child: Text(
                          description,
                          style: TextStyle(color: Colors.white.withOpacity(.7), height: 1.9, fontSize: 15),
                        ),
                      ),
                    ),
                    const SizedBox(height: 20),
                    FadeInUp(child: const Text('READ MORE', style: TextStyle(color: Colors.white))),
                    const SizedBox(height: 30),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
