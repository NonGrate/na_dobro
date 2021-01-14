import 'model/widget/article.dart';
import 'model/widget/carousel.dart';
import 'model/widget/company.dart';
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
    endDate: DateTime.now().add(Duration(days: 4, hours: 2)),
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

List<ArticleItem> articleItems = [
  ArticleItem(
    id: 0,
    author: "Pavel Moric",
    title: "Změna začíná uvědomněním",
    colorStart: 0xFFa868ff,
    colorEnd: 0xFF852BFF,
  ),
  ArticleItem(
    id: 1,
    author: "",
    title: "Jak funguje neziskový sektor",
    colorStart: 0xFF85daf5,
    colorEnd: 0xFF3EBBE3,
  ),
  ArticleItem(
    id: 2,
    author: "O'Reilly",
    title: "Python 101",
    colorStart: 0xFFcef580,
    colorEnd: 0xFFABE23E,
  ),
  ArticleItem(
    id: 3,
    author: "iDnes",
    title: "Index PES spadl do 4. stupně",
    colorStart: 0xFFf66a6a,
    colorEnd: 0xFFE23E3E,
  ),
];

List<CompanyItem> companiesItems = [
  CompanyItem(
    id: 0,
    title: "Konto Bariéry",
    image: "company1.png",
  ),
  CompanyItem(
    id: 1,
    title: "Smiling Crocodile",
    image: "company2.png",
  ),
  CompanyItem(
    id: 2,
    title: "Nadace Adra",
    image: "company3.png",
  ),
  CompanyItem(
    id: 3,
    title: "Život dětem",
    image: "company4.png",
  ),
];
