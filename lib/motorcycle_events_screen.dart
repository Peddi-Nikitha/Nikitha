import 'package:flutter/material.dart';

class MotorcycleEventsScreen extends StatefulWidget {
  const MotorcycleEventsScreen({super.key});

  @override
  State<MotorcycleEventsScreen> createState() => _MotorcycleEventsScreenState();
}

class _MotorcycleEventsScreenState extends State<MotorcycleEventsScreen> with SingleTickerProviderStateMixin {
  late TabController _tabController;
  
  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: 4, vsync: this);
  }

  @override
  void dispose() {
    _tabController.dispose();
    super.dispose();
  }
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.red,
        title: const Text(
          'Nikitha',
          style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
        ),
        leading: IconButton(
          icon: const Icon(Icons.menu, color: Colors.white),
          onPressed: () {},
        ),
        actions: [
          Container(
            margin: const EdgeInsets.symmetric(horizontal: 10),
            decoration: BoxDecoration(
              color: Colors.blue,
              borderRadius: BorderRadius.circular(5),
            ),
            padding: const EdgeInsets.all(5),
            child: const Text('HP', style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold)),
          ),
          IconButton(
            icon: const Icon(Icons.notifications_outlined, color: Colors.white),
            onPressed: () {},
          ),
          Container(
            margin: const EdgeInsets.only(right: 10),
            child: ElevatedButton(
              onPressed: () {},
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.redAccent,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(8),
                ),
              ),
              child: const Text('SOS', style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold)),
            ),
          ),
        ],
      ),
      body: DefaultTabController(
        length: 4,
        child: NestedScrollView(
          headerSliverBuilder: (BuildContext context, bool innerBoxIsScrolled) {
            return [
              SliverToBoxAdapter(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    // 8 Day Bike Trip Card
                    Container(
                      margin: const EdgeInsets.all(16),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(16),
                        image: const DecorationImage(
                          image: NetworkImage("https://images.unsplash.com/photo-1608508644127-ba99d7732fee?q=80&w=1000&auto=format&fit=crop"),
                          fit: BoxFit.cover,
                        ),
                      ),
                      height: 180,
                      width: double.infinity,
                      child: Stack(
                        children: [
                          // Add a dark overlay for better text visibility
                          Container(
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(16),
                              gradient: LinearGradient(
                                begin: Alignment.bottomCenter,
                                end: Alignment.topCenter,
                                colors: [
                                  Colors.black.withOpacity(0.7),
                                  Colors.transparent,
                                ],
                              ),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.all(16.0),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                const Text(
                                  '8 DAYBIKE TRIP TO LEH LADAKH',
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 22,
                                    fontWeight: FontWeight.bold,
                                  ),
                                  textAlign: TextAlign.center,
                                ),
                                const SizedBox(height: 20),
                                ElevatedButton(
                                  onPressed: () {},
                                  style: ElevatedButton.styleFrom(
                                    backgroundColor: Colors.yellow,
                                  ),
                                  child: const Text(
                                    'Register Now',
                                    style: TextStyle(
                                      color: Colors.black,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                    
                    // Events For You Section
                    const Padding(
                      padding: EdgeInsets.symmetric(horizontal: 16.0, vertical: 8.0),
                      child: Center(
                        child: Text(
                          'EVENTS FOR YOU',
                          style: TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                    ),
                    
                    // Hayabusa Event Card
                    Container(
                      margin: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(16),
                        image: const DecorationImage(
                          image: NetworkImage("https://images.unsplash.com/photo-1580310614729-ccd69652491d?q=80&w=1000&auto=format&fit=crop"),
                          fit: BoxFit.cover,
                        ),
                      ),
                      height: 160,
                      width: double.infinity,
                      child: Stack(
                        children: [
                          // Add a dark overlay for better text visibility
                          Container(
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(16),
                              gradient: LinearGradient(
                                begin: Alignment.bottomCenter,
                                end: Alignment.center,
                                colors: [
                                  Colors.black.withOpacity(0.7),
                                  Colors.transparent,
                                ],
                              ),
                            ),
                          ),
                          Positioned(
                            top: 16,
                            right: 16,
                            child: Container(
                              padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 6),
                              decoration: BoxDecoration(
                                color: Colors.yellow,
                                borderRadius: BorderRadius.circular(20),
                              ),
                              child: const Text(
                                'invited',
                                style: TextStyle(
                                  color: Colors.black,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.all(16.0),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisAlignment: MainAxisAlignment.end,
                              children: [
                                const Text(
                                  'HAYABUSA',
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 22,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                                const Text(
                                  '2019 HYDERABAD RIDERS MEETUP',
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 16,
                                  ),
                                ),
                                const SizedBox(height: 8),
                                Container(
                                  padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 6),
                                  decoration: BoxDecoration(
                                    color: Colors.yellow,
                                    borderRadius: BorderRadius.circular(20),
                                  ),
                                  child: const Text(
                                    '2000-8000 INR',
                                    style: TextStyle(
                                      color: Colors.black,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              SliverPersistentHeader(
                delegate: _SliverAppBarDelegate(
                  TabBar(
                    controller: _tabController,
                    labelColor: Colors.black,
                    unselectedLabelColor: Colors.grey,
                    indicatorColor: Colors.black,
                    tabs: const [
                      Tab(text: 'RIDES'),
                      Tab(text: 'STORIES'),
                      Tab(text: 'MARKET'),
                      Tab(text: 'GARAGE'),
                    ],
                  ),
                ),
                pinned: true,
              ),
            ];
          },
          body: TabBarView(
            controller: _tabController,
            children: [
              // RIDES Tab Content
              ListView(
                children: [
                  // First Ride Card
                  RideCard(
                    image: "https://images.unsplash.com/photo-1523987355523-c7b5b0dd90a7?q=80&w=1000&auto=format&fit=crop",
                    title: "ride to nandi hills",
                    riderName: "manish surapaneni",
                    bikeModel: "Ducati",
                    distance: "900 km",
                    date: "July 20 2024",
                    location: "hyderabad",
                    coRiders: "12",
                  ),
                  
                  // Second Ride Card
                  RideCard(
                    image: "https://images.unsplash.com/photo-1523987355523-c7b5b0dd90a7?q=80&w=1000&auto=format&fit=crop",
                    title: "ride to cochi hills",
                    riderName: "manish surapaneni",
                    bikeModel: "Ducati",
                    distance: "900 km",
                    date: "July 20 2024",
                    location: "hyderabad",
                    coRiders: "12",
                  ),
                  RideCard(
                    image: "https://images.unsplash.com/photo-1523987355523-c7b5b0dd90a7?q=80&w=1000&auto=format&fit=crop",
                    title: "ride to nandi hills",
                    riderName: "manish surapaneni",
                    bikeModel: "Ducati",
                    distance: "900 km",
                    date: "July 20 2024",
                    location: "hyderabad",
                    coRiders: "12",
                  ),
                  RideCard(
                    image: "https://images.unsplash.com/photo-1523987355523-c7b5b0dd90a7?q=80&w=1000&auto=format&fit=crop",
                    title: "ride to nandi hills",
                    riderName: "manish surapaneni",
                    bikeModel: "Ducati",
                    distance: "900 km",
                    date: "July 20 2024",
                    location: "hyderabad",
                    coRiders: "12",
                  ),
                  RideCard(
                    image: "https://images.unsplash.com/photo-1523987355523-c7b5b0dd90a7?q=80&w=1000&auto=format&fit=crop",
                    title: "ride to nandi hills",
                    riderName: "manish surapaneni",
                    bikeModel: "Ducati",
                    distance: "900 km",
                    date: "July 20 2024",
                    location: "hyderabad",
                    coRiders: "12",
                  ),
                  RideCard(
                    image: "https://images.unsplash.com/photo-1523987355523-c7b5b0dd90a7?q=80&w=1000&auto=format&fit=crop",
                    title: "ride to nandi hills",
                    riderName: "manish surapaneni",
                    bikeModel: "Ducati",
                    distance: "900 km",
                    date: "July 20 2024",
                    location: "hyderabad",
                    coRiders: "12",
                  ),
                ],
              ),
              
              
              ListView(
                children: const [
                  StoryCard(
                    title: "Title 1",
                    description: "Last summer, I embarked on an incredible journey through the winding roads of the Himalayas. The breathtaking views, challenging terrain, and serene environment made it an unforgettable experience.",
                  ),
                  StoryCard(
                    title: "Title 2",
                    description: "Riding along the western coast of India, I witnessed some of the most beautiful sunsets and enjoyed the cool breeze from the Arabian Sea. The trip was filled with delicious seafood and memorable interactions with locals.",
                  ),
                  StoryCard(
                    title: "Title 3",
                    description: "A short but refreshing trip to the hills during the monsoon season. The lush green landscapes and foggy roads created a mystical atmosphere that was perfect for introspection and adventure.",
                  ),
                ],
              ),
              
              
              // MARKET Tab Content
              ListView(
                padding: const EdgeInsets.all(16.0),
                children: const [
                  MarketItemCard(itemNumber: 1),
                  MarketItemCard(itemNumber: 2),
                  MarketItemCard(itemNumber: 3),
                  MarketItemCard(itemNumber: 4),
                  MarketItemCard(itemNumber: 5),
                  MarketItemCard(itemNumber: 6),
                  MarketItemCard(itemNumber: 7),
                  MarketItemCard(itemNumber: 8),
                  MarketItemCard(itemNumber: 9),
                  MarketItemCard(itemNumber: 10),
                ],
              ),
              
              // GARAGE Tab Content
              ListView(
                padding: const EdgeInsets.all(16.0),
                children: const [
                  GarageItemCard(itemNumber: 1),
                  GarageItemCard(itemNumber: 2),
                  GarageItemCard(itemNumber: 3),
                  GarageItemCard(itemNumber: 4),
                  GarageItemCard(itemNumber: 5),
                  GarageItemCard(itemNumber: 6),
                  GarageItemCard(itemNumber: 7),
                  GarageItemCard(itemNumber: 8),
                  GarageItemCard(itemNumber: 9),
                  GarageItemCard(itemNumber: 10),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class _SliverAppBarDelegate extends SliverPersistentHeaderDelegate {
  _SliverAppBarDelegate(this._tabBar);

  final TabBar _tabBar;

  @override
  double get minExtent => _tabBar.preferredSize.height;
  @override
  double get maxExtent => _tabBar.preferredSize.height;

  @override
  Widget build(
      BuildContext context, double shrinkOffset, bool overlapsContent) {
    return Container(
      color: Colors.white,
      child: _tabBar,
    );
  }

  @override
  bool shouldRebuild(_SliverAppBarDelegate oldDelegate) {
    return false;
  }
}

class RideCard extends StatelessWidget {
  final String image;
  final String title;
  final String riderName;
  final String bikeModel;
  final String distance;
  final String date;
  final String location;
  final String coRiders;

  const RideCard({
    super.key,
    required this.image,
    required this.title,
    required this.riderName,
    required this.bikeModel,
    required this.distance,
    required this.date,
    required this.location,
    required this.coRiders,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: const EdgeInsets.symmetric(vertical: 8, horizontal: 16),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(12),
      ),
      elevation: 0,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // Image
          Container(
            height: 180,
            width: double.infinity,
            decoration: BoxDecoration(
              borderRadius: const BorderRadius.only(
                topLeft: Radius.circular(12),
                topRight: Radius.circular(12),
              ),
              image: DecorationImage(
                image: NetworkImage(image),
                fit: BoxFit.cover,
              ),
            ),
          ),
          
          // Title
          Padding(
            padding: const EdgeInsets.fromLTRB(16, 12, 16, 8),
            child: Text(
              title,
              style: const TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.w500,
              ),
            ),
          ),
          
          // Rider Info and Details
          Padding(
            padding: const EdgeInsets.fromLTRB(16, 0, 16, 16),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                // Profile Circle
                CircleAvatar(
                  backgroundColor: Colors.grey.shade200,
                  radius: 20,
                  child: const Icon(Icons.person, color: Colors.grey),
                ),
                
                const SizedBox(width: 12),
                
                // Rider Name and Bike
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        riderName,
                        style: const TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 16,
                        ),
                      ),
                      Text(
                        bikeModel,
                        style: TextStyle(
                          color: Colors.grey.shade600,
                          fontSize: 14,
                        ),
                      ),
                    ],
                  ),
                ),
                
                // Co-riders
                Text(
                  'Co Riders: $coRiders',
                  style: TextStyle(
                    color: Colors.grey.shade600,
                    fontSize: 14,
                  ),
                ),
              ],
            ),
          ),
          
          // Distance, Date, Location
          Padding(
            padding: const EdgeInsets.fromLTRB(16, 0, 16, 16),
            child: Row(
              children: [
                // Distance
                Icon(Icons.speed, color: Colors.red.shade400, size: 20),
                const SizedBox(width: 4),
                Text(
                  distance,
                  style: const TextStyle(
                    fontSize: 14,
                  ),
                ),
                
                const SizedBox(width: 16),
                
                // Date
                Icon(Icons.calendar_today, color: Colors.red.shade400, size: 20),
                const SizedBox(width: 4),
                Text(
                  date,
                  style: const TextStyle(
                    fontSize: 14,
                  ),
                ),
                
                const SizedBox(width: 16),
                
                // Location
                Icon(Icons.location_on, color: Colors.red.shade400, size: 20),
                const SizedBox(width: 4),
                Text(
                  location,
                  style: const TextStyle(
                    fontSize: 14,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class StoryCard extends StatelessWidget {
  final String title;
  final String description;

  const StoryCard({
    super.key,
    required this.title,
    required this.description,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: const EdgeInsets.symmetric(vertical: 8, horizontal: 16),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(12),
      ),
      elevation: 2,
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(12),
          color: Colors.red.shade100,
        ),
        padding: const EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              title,
              style: const TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
                color: Colors.black,
              ),
            ),
            const SizedBox(height: 12),
            Text(
              description,
              style: const TextStyle(
                fontSize: 16,
                color: Colors.black87,
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class MarketItemCard extends StatelessWidget {
  final int itemNumber;

  const MarketItemCard({
    super.key,
    required this.itemNumber,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 3,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(12),
      ),
      child: Container(
        width: double.infinity,
        height: 150,
        decoration: BoxDecoration(
          color: Colors.red,
          borderRadius: BorderRadius.circular(12),
        ),
        child: Center(
          child: Text(
            'Market Item $itemNumber',
            style: const TextStyle(
              color: Colors.white,
              fontWeight: FontWeight.bold,
              fontSize: 20,
            ),
            textAlign: TextAlign.center,
          ),
        ),
      ),
    );
  }
}

class GarageItemCard extends StatelessWidget {
  final int itemNumber;

  const GarageItemCard({
    super.key,
    required this.itemNumber,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 3,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(12),
      ),
      child: Container(
        width: double.infinity,
        height: 150,
        decoration: BoxDecoration(
          color: Colors.blue,
          borderRadius: BorderRadius.circular(12),
        ),
        child: Center(
          child: Text(
            'Garage Item $itemNumber',
            style: const TextStyle(
              color: Colors.white,
              fontWeight: FontWeight.bold,
              fontSize: 20,
            ),
            textAlign: TextAlign.center,
          ),
        ),
      ),
    );
  }
} 
