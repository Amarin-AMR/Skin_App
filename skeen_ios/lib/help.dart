import 'package:flutter/material.dart';

class Help extends StatelessWidget {
  var data;
  Help({required this.data});

  List<String> info = [
    'Actinic keratoses (also called solar keratoses) are dry scaly patches of skin that have been damaged by the sun. The patches are not usually serious. But there is a small chance they could become skin cancer, so it is important to avoid further damage to your skin.',
    'Basal cell carcinoma is a type of skin cancer. Basal cell carcinoma begins in the basal cells a type of cell within the skin that produces new skin cells as old ones die off. Basal cell carcinoma often appears as a slightly transparent bump on the skin, though it can take other forms. Basal cell carcinoma occurs most often on areas of the skin that are exposed to the sun, such as your head and neck. Most basal cell carcinomas are thought to be caused by long-term exposure to ultraviolet (UV) radiation from sunlight. Avoiding the sun and using sunscreen may help protect against basal cell carcinoma.',
    'Seborrheic keratosis is a common noncancerous (benign) skin growth. People tend to get more of them as they get older. Seborrheic keratoses are usually brown, black or light tan. The growths (lesions) look waxy or scaly and slightly raised. They appear gradually, usually on the face, neck, chest or back. Seborrheic keratoses are harmless and not contagious. They do not need treatment, but you may decide to have them removed if they become irritated by clothing or you do not like how they look.',
    'Dermatofibromas are harmless growths within the skin that usually have a small diameter. They can vary in color but are typically pink to light brown in light skin and dark brown or black in dark skin. They may appear more pink or darker if a person accidentally irritates them  for example, when shaving. As they are dense and firm to the touch, many people say that they feel like a small stone underneath or raised above the skin. Most dermatofibromas are painless, but some people experience itching, irritation, or tenderness at the site of the growth.',
    'Melanocytic nevi usually look like light to dark brown spots on the skin. In children with very light or fair skin, they may appear more pink or red in color.They may have hair growing in them, a bumpy texture, or slowly get darker in color; such changes are generally normal. Most congenital melanocytic nevi do not need treatment. However, all moles carry a very small risk for the development of melanoma, a type of skin cancer. The development of melanoma within a congenital melanocytic nevus is very rare.',
    'Melanoma, the most serious type of skin cancer, develops in the cells (melanocytes) that produce melanin the pigment that gives your skin its color. Melanoma can also form in your eyes and, rarely, inside your body, such as in your nose or throat. The exact cause of all melanomas is not clear, but exposure to ultraviolet (UV) radiation from sunlight or tanning lamps and beds increases your risk of developing melanoma. Limiting your exposure to UV radiation can help reduce your risk of melanoma. The risk of melanoma seems to be increasing in people under 40, especially women. Knowing the warning signs of skin cancer can help ensure that cancerous changes are detected and treated before the cancer has spread. Melanoma can be treated successfully if it is detected early.',
    'Vascular birthmarks are common, idiopathic (of unknown cause) clusters of blood vessel growths found in infants and children. They are present at birth but may not have a noticeable appearance for weeks and sometimes years. These birthmarks are classified in two groups: tumors and malformations. Vascular tumors are neoplasms, involving cellular proliferation of vessels. Vascular malformations, on the other hand, do not involve active proliferation of the blood vessels and are stable throughout one’s lifetime; they are further classified according to the type of vessels found in the birthmark.'
  ];

  List<String> treatments = [
    'Treatments for actinic keratoses - If you only have 1 skin patch, a GP might suggest waiting to see if the patch goes away by itself. If you have more than 1 patch, or a patch is causing you problems such as pain and itchiness, treatment is usually recommended. A GP may refer you to a skin specialist (dermatologist).',
    'Treatment basal cell carcinoma - The goal of treatment for basal cell carcinoma is to remove the cancer completely. Which treatment is best for you depends on the type, location and size of your cancer, as well as your preferences and ability to do follow-up visits. Treatment selection can also depend on whether this is a first-time or a recurring basal cell carcinoma. Basal cell carcinoma is most often treated with surgery to remove all of the cancer and some of the healthy tissue around it.',
    'Treatments for Bebign keratoses - A seborrheic keratosis typically does not go away on its own, but treatment is not needed. You might choose to have it removed if it becomes irritated or bleeds., or if you do not like how it looks or feels. Seborrheic keratosis removal can be achieved with one or a combination of the following methods - Freezing the growth, Scraping or shaving skin surface and Burning with an electric current.',
    'Treatment dermatofibroma - Most dermatofibromas do not require treatment. A person can safely leave them alone, and they will usually cause no symptoms aside from their appearance on the skin.',
    'Treatments melanocytic nevi - The majority of congenital melanocytic nevi do not need treatment. Check the mole(s) each month. Watch for any changes in the way the mole(s) look. It may help to take a photo of the mole(s) with your smartphone or digital camera so you can tell if there have been any changes. If there are any changes, such as areas of bleeding or crusting, new bumpy areas, areas that change color, new pain or itch, change in shape or rapid change in size, have your child see your doctor. Your doctor may suggest that a sampling or skin biopsy be done. This is usually done in an office and takes no more than a few minutes. For some congenital nevi, complete removal may be recommended. This may require general anesthesia in younger children or in any child with fear or anxiety about the procedure. Removing a mole requires surgery. Although removing the mole will greatly reduce the chance of melanoma, it will leave a scar. This is to be considered when deciding whether or not to remove it. There are no lasers or other treatments that can be safely used to remove melanocytic nevi.',
    'Treatments Melanoma - The type of treatment(s) your doctor recommends will depend on the stage and location of the melanoma. But other factors can be important as well, such as the risk of the cancer returning after treatment, if the cancer cells have certain gene changes, and your overall health.',
    'Treatment for Vascular Lesions - Spider and facial veins are dilated capillary vessels that are visible to the eyes. Couperose forms when they accumulate in the face. Couperose developes when the blood accumulates in capillary vessels. These vessels remain overextended until they receive treatment. This is by no means a sign of aging, as 70% of 30 – 39 year-olds are already suffering from visible branching of the vessels. For the treatment of vascular lesions, I prefer to use the yellow laser. Pulses from yellow laser are applied to the treated area. The veins and capillaries of the lesion absorb the laser’s energy while the surrounding skin tissue does not. The treatment causes the exposed vessels to break down and become less visible. The procedure time for vascular lesion treatments depends on the size of the lesion. However, treatment time does not take more than a few minutes. Side effects from the procedure are minimal. Patients may experience some slight discomfort or redness in the area which will subside in a couple of hours. Other benefits of this treatment includes lightening of pigmentation, skin rejuvenation and acne removal.'
  ];

  String path() {
    String a = data;
    if (a == 'Melanocytic nevi (nv)') {
      return 'nv';
    } else if (a == 'Melanoma (mel)') {
      return 'mel';
    } else if (a == 'Benign keratosis-like lesions (bkl)') {
      return 'bkl';
    } else if (a == 'Basal cell carcinoma (bcc)') {
      return 'bcc';
    } else if (a == 'Actinic keratoses (akiec)') {
      return 'akiec';
    } else if (a == 'Vascular lesions (vasc)') {
      return 'vasc';
    } else {
      //Dermatofibroma (df)
      return 'df';
    }
  }

  int check() {
    int checkData;
    String a = data;
    if (a == 'Melanocytic nevi (nv)') {
      return checkData = 4;
    } else if (a == 'Melanoma (mel)') {
      return checkData = 5;
    } else if (a == 'Benign keratosis-like lesions (bkl)') {
      return checkData = 2;
    } else if (a == 'Basal cell carcinoma (bcc)') {
      return checkData = 1;
    } else if (a == 'Actinic keratoses (akiec)') {
      return checkData = 0;
    } else if (a == 'Vascular lesions (vasc)') {
      return checkData = 6;
    } else {
      return checkData = 3;
    }
  }

  @override
  Widget build(BuildContext context) {
    int checkData = check();

    return ListView(children: [
      Container(
        decoration: BoxDecoration(
            border:
                Border.symmetric(horizontal: BorderSide(color: Colors.white))),
        child: Container(
          margin: EdgeInsets.all(10),
          child: Text(
            data,
            style: TextStyle(color: Color(0xFFFFE9E3),
            fontSize: 20.0,
            fontWeight: FontWeight.bold
            ),
          ),
        ),
      ),
      SizedBox(
        height: 20,
      ),
      Container(
        margin: EdgeInsets.only(left: 10, right: 10),
        child: Text(
          info[checkData],
          textAlign: TextAlign.justify,
          style: TextStyle(color: Color(0xFFFFE9E3)),
        ),
      ),
      SizedBox(
        height: 30,
      ),
      Container(
        margin: EdgeInsets.only(left: 25, right: 25),
        child: Image(
          image: AssetImage(
            'assets/${path()}.jpg',
          ),
          width: 300,
        ),
      ),
      SizedBox(
        height: 30,
      ),
      Container(
        margin: EdgeInsets.only(left: 10, right: 10),
        child: Text(
          'Treatments' + ' ' + data,
          style: TextStyle(color: Color(0xFFFFE9E3),
          fontWeight: FontWeight.bold,
          fontSize: 18.0
          ),
        ),
      ),
      SizedBox(
        height: 10,
      ),
      Container(
        margin: EdgeInsets.only(left: 10, right: 10,bottom: 20),
        child: Text(
          treatments[checkData],
          textAlign: TextAlign.justify,
          style: TextStyle(color: Color(0xFFFFE9E3)),
        ),
      )
    ]);
  }
}
