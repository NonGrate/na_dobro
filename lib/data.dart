import 'model/widget/carousel.dart';
import 'model/widget/support.dart';

List<CarouselItem> carouselItems = [
  CarouselItem(id: 0, image: "carousel1.png"),
  CarouselItem(id: 1, image: "carousel2.png"),
  CarouselItem(id: 2, image: "carousel3.png"),
  CarouselItem(id: 3, image: "carousel4.png"),
];

List<SupportItem> demandItems = [
  SupportItem(
    id: 0,
    image: "demand1.png",
    title: "Trvalá podpora pro rodiny bojující s DMO",
    patrons: 4500,
    patronsGoal: 5000,
    state: SupportState.IN_PROGRESS,
    endDate: DateTime.now().add(Duration(days: 4)),
    isNew: false,
  ),
  SupportItem(
    id: 1,
    image: "demand2.png",
    title: "Robotické končetiny pomáhají žít naplno",
    patrons: 4500,
    patronsGoal: 4200,
    state: SupportState.FULFILLED,
    endDate: DateTime.now().add(Duration(days: 1)),
    isNew: true,
  ),
  SupportItem(
    id: 2,
    image: "demand3.png",
    title: "Hledáme pomoc pro děti s nemocí motýlích křídel.",
    patrons: 5200,
    patronsGoal: 5000,
    state: SupportState.SUCCESSFUL,
    endDate: DateTime.now().subtract(Duration(days: 5)),
    isNew: false,
  ),
  SupportItem(
    id: 3,
    image: "demand4.png",
    title: "Podpora pro rodiny bojující s rakovinou",
    patrons: 1500,
    patronsGoal: 4500,
    state: SupportState.FAILED,
    endDate: DateTime.now().subtract(Duration(days: 10)),
    isNew: false,
  ),
];

List<SupportItem> partnersItems = [
  SupportItem(
    id: 0,
    image: "partners1.png",
    title: "Pomoc od srdíčka s Pavlem Novotným",
    patrons: 4500,
    patronsGoal: 5000,
    state: SupportState.IN_PROGRESS,
    endDate: DateTime.now().add(Duration(days: 4)),
    isNew: false,
  ),
  SupportItem(
    id: 1,
    image: "partners2.png",
    title: "Leoš prodal Ferrari, teď pomáhá dětem",
    patrons: 4500,
    patronsGoal: 4200,
    state: SupportState.FULFILLED,
    endDate: DateTime.now().add(Duration(days: 1)),
    isNew: true,
  ),
  SupportItem(
    id: 2,
    image: "partners3.png",
    title: "Hledáme pomoc pro děti s nemocí motýlích křídel.",
    patrons: 5200,
    patronsGoal: 5000,
    state: SupportState.SUCCESSFUL,
    endDate: DateTime.now().subtract(Duration(days: 5)),
    isNew: false,
  ),
  SupportItem(
    id: 3,
    image: "partners4.png",
    title: "Podpora pro rodiny bojující s rakovinou",
    patrons: 1500,
    patronsGoal: 4500,
    state: SupportState.FAILED,
    endDate: DateTime.now().subtract(Duration(days: 10)),
    isNew: false,
  ),
];
