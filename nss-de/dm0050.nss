//<continuation number="170">
//<continuation number="">


chapter main
{

	if($GameStart != 1)
	{
		$GameName = ModuleFileName();
		$GameContiune = 1;
		Reset();
	}

}


scene dm0050.nss_MAIN
{
//�������ݒ�
	if(($SYSTEM_skip && #SYSTEM_skip_express && $AllRead) || ($SYSTEM_skip && #SYSTEM_skip_express && #SYSTEM_skip_absolute)){
		SkipOut();
	}else{
		$MainGameName="@->"+$GameName;
		GameMainSet();
		call_scene $MainGameName;
		GameMainSet2();
	}

//���I�����X�N���v�g�y�уt���O�ݒ�
	//���C�x���g�b�f
	#�C�x���g�t�@�C����=true;
	#bg101011_1_���Z����ʂ�\=true;
	#bg402011_1_��������֎~���ʂ�=true;
	#bg101041_3_���Z����ʂ藠�H�n05=true;
	#bg002011_1_���Z����S�i=true;
	#bg101023_5_���Z����ʂ藠�H�n03=true;
	#bg108012_1_�k�n��O��̒ʂ�=true;

	//�����[�g�t���O�A�I�����A����GameName
	$PreGameName = $GameName;
	$GameName = "dm0060.nss";

}


scene dm0050.nss
{

	//���V�[���̓��ɕK���L�q
	$�X�N���v�g�o�[�W���� = " $Revision:  $";
	$�\���� = ModuleFileName();
	$�\���� = $SYSTEM_present_process;
	SystemInit();


//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\

	PrintBG("��w�i", 30000);

	OnBG(10,"bg101011_1_���Z����ʂ�\");
	FadeBG(0,true);

	CreateTextureSP("�G�w�i100", 100, -511, -520, "cg/bg/m/bg101011_1_���Z����ʂ�\_m.jpg");

	CreateSE("SE01","se��_����_���l������ʂ�01L");
	MusicStart("SE01",1000,700,0,1000,null,true);

	FadeDelete("��w�i", 1000, null, true);

	Wait(1000);

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0010]
Die beste Art sich hier fort zu bewegen ist zu Fuss&.
Fast jeder geht zu Fuss&.

{
	SetVolumeEX("SE*", 3000, 450, null);
	SoundPlay("@dm001",0,450,true);
}
Das Transportsystem im Old Resident District ist ziemlich schlecht&.

Es gibt eine Hauptstrasse die durch die Mitte der Stadt verlaeuft
und es fahren sogar Busse oder sogar Taxis&.

Aber oft verspaeten sie sich oder werden ohne Hinweis gestrichen&, 
deshalb kann man sich nicht wirklich auf sie verlassen&.

Die Strassen koennen auch jederzeit blockiert sein&,
also vertraut Niemand auf das Transportsystem&.

Sogar jetzt sind kaum Autos unterwegs&. Es gibt nur ein nutzlos wartendes Taxi
und ein paar kaputte Autos am Strassenrand&.

Der Gehsteig ist voller Menschen&, die kommen und gehen&.

Das Zuverlaesstigste womit du dich fortbewegen kannst&, sind deine eigenen Beine&.

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);


//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0020]
Das hoffnungslose Old Resident District ist in ein Nord&, 
Sued&, Ost and West Bezirk aufgeteilt&. 
Sie aehneln sich&, aber es gibt Unterschiede&.

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
	TextBoxDelete(0);

	SetVolumeEX("SE*", 3000, 0, null);

	Move("�G�w�i100", 500, @0, @100, Dxl1, false);
	FadeDelete("�G�w�i100", 500, null, true);

	Wait(500);

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0021]
Zum Beispiel&, das Ost Bezirk&, in welchem Heibon und mein Haus liegt&, 
ist eine Wohngegend mit Teilen des Zentrums&.

Das ganze Bezirk ist relativ sicher und es ist einfach Dinge zu besorgen&.

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

	CreatePlainSP("�G��", 5000);

	Delete("�G�w�i200");

	CreateMaskEX("�G����", 0, 0, 0, "cg/data/circle_18_00_1.png", false);
	CreateMaskEX("�G������", 0, 0, 0, "cg/data/circle_19_00_1.png", false);
	CreateTextureSP("�G����/�G�摜1", 101, 0, 0, "cg/bg/bg108012_1_�k�n��O��̒ʂ�.jpg");

	FadeDelete("�G��", 500, null, true);

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0022]
Das Nord Bezirk ist ein Gebiet&,
welches man nicht betreten darf und eine Art Geisterstadt&. 
Es ist nicht sicher dort&.

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

	CreatePlainSP("�G��", 5000);

	CreateTextureSP("�G����/�G�摜2", 102, -360, -660, "cg/bg/l/bg002011_1_���Z����S�i_l.jpg");
	Delete("�G����/�G�摜1");

	FadeDelete("�G��", 500, null, true);

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0023]
Das West Bezirk ist auch eine Wohngegend&, aber man 
kann dort nicht einkaufen gehen&.

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

//	CreateTextureSP("�G�}�X�N��/�G�摜4", 105, Center, Middle, "cg/bg//bg101041_1_���Z����ʂ藠�H�n05.jpg");//�v�����ւ��i���q

	CreatePlainSP("�G��", 5000);

	CreateTextureSP("�G����/�G�摜3", 103, -108, -81, "cg/bg/l/bg101041_3_���Z����ʂ藠�H�n05_l.jpg");
	Delete("�G����/�G�摜2");

	FadeDelete("�G��", 500, null, true);

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0024]
Das Sued Bezirk ist voller Modegeschaefte&, 
Arcade-Automaten und Unterhaltungsmoeglichkeiten&,
deshalb halten sich dort viele junge Leute auf&.

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

	CreatePlainSP("�G��", 5000);

	CreateTextureSP("�G����/�G�摜4", 105, -200, -300, "cg/bg/m/bg001011_1_�ɓ��S�i_m.jpg");
	Delete("�G����/�G�摜3");

	FadeDelete("�G��", 500, null, true);

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0025]
Und wenn man weiter nach Norden geht&,
findet man dort das Platinum Jail&, 
ein Ort voller Prominenter und Unternehmer&.

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

	CreateTextureEX("�G�摜10", 110, Center, Middle, "cg/ef/efl���S���].jpg");
	Fade("�G�摜10", 500, 800, null, true);

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0026]
Platinum Jail ist einer der fuenf japanischen Mischkonterne&. 
Und als Toue Inc&. diese Insel&, Midorijima&, kaufte machten
sie daraus ein Unterhaltungsgebiet&, das nur Mitgliedern zugaenglich ist&.

Wenn die Geschichten die ich gehoert habe wahr sind&, 
ist alles dort ziemlich luxorioes&.

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

	FadeDelete("�G�摜10",500,null,true);

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0030]
Abgesehen vom Oval Tower&, welcher im Stadtzentrum steht&, 
gibt es riesige Kasinos&, Kinos&, Einkaufszentren und Hotels&.&.&.
Egal&, es gibt dort alles moegliche&.

Grundseatzlich kannst du ohne Einladung kein Mitglied werden&,
aber wenn doch&, ist die Mitgliedschaftsgebuhr so teuer wie die ganze Insel&.&.&.
Zumindest soweit ich weiss&.

Natuerlich koennen die Leute hier im Old Resident District nicht ins 
Platinum Jail&.

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

	CreatePlainSP("�G��", 5000);

	Delete("�G����/�G*");
	Delete("�G����*");
	Delete("�G�F��");

	FadeDelete("�G��", 500, null, true);

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0035]
Das Old Resident District ist sozusagen fast schon ein Slum&, 
Es wird so gehandhabt das hier fast jeder leben kann&.

Aber war's auch schon&.

Die Polizei arbeitet mit der Yakuza zusammen und tun was sie wollen&, 
also gibt es einen grossen Unterschied zwischen hier und dem Platinum Jail&.

Es ist nicht so als koennten wir etwas daran aendern&. Selbst wenn wir unzufrieden 
sind&, koennen wir nichts tun und muessen das ganze schlucken&.

Trotzdem&, wie das Sprichwort sagt "there's no place like home"&, 
also sobald du dich an alles gewoehnt hast&, 
ist das Leben hier unerwartet komfortabel&.

Wir haben nicht so grosse Sorgen das wir nicht leben koennen&, 
es gibt auch schoene Tage&.

Ich wuensche mir nicht viel&. Ich haette kein Problem damit&,
wenn alles so bleiben wuerde wie es ist&.

Fast alle Leute die im Old Resident District leben denken so&.

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

	CreateSE("SE01","se�l��_����_�ߎC��03");
	MusicStart("SE01",0,700,0,1000,null,false);
	SetVolumeEX("SE*", 2000, 0, null);

	Wait(500);

	Fw("fwAM�@_�ʏ�_normal");
//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0040]
//�y�@�z
<voice name="�@" class="�@" src="voice/dm00/5000010a06">
"Aoba&.&.&.Aoba&."

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0041]
Ren hebt seinen Kopf aus der Tasche und beruehrt mit seiner Pfote meinen Arm.

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

	Fw("fw���t_�ʏ�_normal2");
//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0042]
//�y���t�z
<voice name="���t" class="���t" src="voice/dm00/5000020a01">
"Was ist denn?"

{	Fw("fwAM�@_�ʏ�_normal");}
//�y�@�z
<voice name="�@" class="�@" src="voice/dm00/5000030a06">
"Du denkst zu viel nach&. Mein Gedanken-Schaltkreis wird fast kurzgeschlossen&."

{	FwPro("fw���t_�ʏ�_shock2",1200,"fw���t_�ʏ�_sigh");}
//�y���t�z
<voice name="���t" class="���t" src="voice/dm00/5000040a01">
"Ernsthaft? Was fuer einen schwachen Schaltkreis habe ich in dich eingebaut?"

{	Fw("fwAM�@_�ʏ�_normal");}
//�y�@�z
<voice name="�@" class="�@" src="voice/dm00/5000050a06">
"Wenn die Staerke des Gedanken-Schaltkreis temporaer auf 100 gesetzt waere
 und mit dem des durschnittlichen erwachsenen Mannes verglichen&, 
 waere deine Staerke&.&.&."

{	Fw("fw���t_�ʏ�_fake");}
//�y���t�z
<voice name="���t" class="���t" src="voice/dm00/5000060a01">
"Okay&, okay&. Du musst es nicht erklaeren&. Ich bin hier Derjenige der von 
 deiner Erklaerung einen Kurzschluss bekommt&."

{	Fw("fwAM�@_�ʏ�_normal");}
//�y�@�z
<voice name="�@" class="�@" src="voice/dm00/5000070a06">
"Ist das so?"

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);


//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0050]
Ich laechele unbeabsichtigt wegen Ren's ernstgemeinter Antwort 
und streichele ueber seinen Kopf&.

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

	CreatePlainSP("�G��", 5000);

	CreateMaskSetSP("�G��", 2000, 0, 0, "ci���C��_01_00", true, "ci���C��_01_00z");

	CreateTextureSP("�G��/�G�V�F�[�h�p", 100, -15, -1082,"cg/bg/l/bg101011_1_���Z����ʂ�\_l.jpg");
	CreateTextureSP("�G��/�G���G", 1500, Center, 20, "cg/bu/buAM�@_�ʏ�_normal.png");
	CreateColorEX("�G��/�G����", 1000, "000000");

	SetShade("�G��/�G�V�F�[�h�p", MEDIUM);

	Fade("�G��/�G����", 0, 400, null, true);

	DrawDelete("�G��", 300, 100, Dxl3, "slide_05_01_0", true);

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0051]
Ren ist ein Hund-Allmate&. 
Allmates sind eine intelligente&, kuenstliche Lebensform&.
Sie werden meist als Assistent fuer Netzwerkdienste verwendet&.

Sie koennen das Internet und den Virtuellen Raum nach Informationen
durchsuchen und natuerlich kann man mit ihnen auch online einkaufen&.

Je nach Modell ist es auch moeglich&, den Allmate als Haushaltshilfe zu verwenden&,
oder ihn als aktiven Partner in Rhyme einzusetzen&. Es gibt verschiedene Arten von 
Allmates&, darunter Tier-Allmates; 
Viele Leute behandeln sie wie Haustiere&.

Ren und ich sind auch schon seit einiger Zeit ein Team&. 
Ich glaube es ist nicht uebertrieben ihn einen Partner zu nennen&.

Auch wenn sich die Allmates verbessern und neue Modelle erscheinen&, 
wuerde ich Ren nicht mal verlassen wenn die Hoelle zufriert&.

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

	CreatePlainSP("�G��", 5000);

	Delete("�G��*");
	Delete("�G��/�G*");

	DrawDelete("�G��", 300, 100, Axl3, "slide_05_01_1", true);

	Fw("fwAM�@_�ʏ�_normal");
//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0060]
//�y�@�z
<voice name="�@" class="�@" src="voice/dm00/5000080a06">
"Aoba&, wenn du eine Abkuerzung nehmen willst&, 
 bieg an der naechsten Kreuzung rechts ab&."

{	Fw("fw���t_�ʏ�_shock");}
//�y���t�z
<voice name="���t" class="���t" src="voice/dm00/5000090a01">
"Oh&, das war knapp&. Haette ich fast verpasst&."

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
	TextBoxDelete(0);

	SetVolumeEX("@dm*", 2000, 0, null);

	CreateColorSP("�G����", 25000, "BLACK");

	DrawTransition("�G����", 1000, 0, 1000, 100, null, "cg/data/blind_01_00_0.png", true);

//�w�i�ύX���܂����B���H�n03�͂����ł����g���ĂȂ����������C�u�����p�̓o�^�����������Ȃ̂�
//�ύX���Ȃ��ł��������i���q
//	OnBG(10,"bg101023_5_���Z����ʂ藠�H�n03");
//	FadeBG(500,true);Rotate("@OnBG*",0,0,180,0,null,true);
	CreateTextureSP("�G�w�i", 100, -10, -288, "cg/bg/m/bg101023_5_���Z����ʂ藠�H�n03_m.jpg");#bg101023_5_���Z����ʂ藠�H�n03=true;
	Rotate("�G�w�i",0,0,180,0,null,true);

	SoundPlay("@dm002",0,450,true);

	DrawDelete("�G����", 1000, 100, null, "blind_01_00_1", true);

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0071]
Ren's Anweisungen folgend&, gehe ich in eine enge Seitenstrasse&. 

Sobald ich dort durchgegangen bin&, ist es nicht mehr weit bis zum Kurier&.

Die Aoyagi Strasse teilt das Old Resident District in die vier Bezirke&.

Auf der Aoyagi Strasse gibt es viele Laeden in denen man Dinge billiger bekommt&. 
Im Gegensatz dazu gibt es in den Hinterstrassen viele Hobbylaeden&.

Waehrend ich die Seitenstrasse entlang laufe&,
sticht eine Gruppe hervor&, die sich an eine schmutzige Wand lehnt&.

So wie Leute die abwechselnd Drogen nehmen&.&.&.
Diese Art von Atmosphaere&. Was stimmt mit den Kindern heutzutage nicht&.

Es gab Zeiten in denen ich dachte das so etwas sei normal&.
Ich war genauso&.

Aber Hey&,
es ist nicht so das ich alt genug waere so zu sprechen&.&.&.

Ich bin damit fertig&.
Fuer immer&.

Waehrend ich an der Gruppe vorbeigehe&, 
kommt mir ihr Gespraech zu Ohren&.

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

	Fw("fwm���A_�ʏ�_normal");
//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0080]
//�y��҂`�z
<voice name="��҂`" class="��҂`" src="voice/dm00/5000100e35">
"&.&.&.Also Ja&, es ist wohl wirklich passiert&.
Im Kopf angegriffen werden&, einfach so?"

{	Fw("fwm���B_�ʏ�_normal");}
//�y��҂a�z
<voice name="��҂a" class="��҂a" src="voice/dm00/5000110e36">
"Was zur Hoelle ist das?
Eine erzwungene Rhyme Session?"

{	Fw("fwm���A_�ʏ�_normal");}
//�y��҂`�z
<voice name="��҂`" class="��҂`" src="voice/dm00/5000120e35">
"Ja&, genau das&. Die Rhyme Session startet einfach ploetzlich
 und der Gegner ist auch irrsinnig stark&."

{	Fw("fwm���B_�ʏ�_normal");}
//�y��҂a�z
<voice name="��҂a" class="��҂a" src="voice/dm00/5000130e36">
"Bedeutet das nicht das Usui fehlen wuerde? 
 Wenn das so ist&, kann man ueberhaupt Rhyme spielen?"

{	Fw("fwm���A_�ʏ�_normal");}
//�y��҂`�z
<voice name="��҂`" class="��҂`" src="voice/dm00/5000140e35">
"Scheint so&. Ich kapiere es trotzdem nicht&."

{	Fw("fwm���B_�ʏ�_normal");}
//�y��҂a�z
<voice name="��҂a" class="��҂a" src="voice/dm00/5000150e36">
"Wenn du nicht vorbereitet bist&, ist es nicht unmoeglich zu kaempfen? 
 Also kannst du nicht ablehnen?"

{	Fw("fwm���A_�ʏ�_normal");}
//�y��҂`�z
<voice name="��҂`" class="��҂`" src="voice/dm00/5000160e35">
"Anscheinend werden keine Fragen gestellt&. Egal&, 
 gewaltsam in Rhyme hereingezogen und geschlagen zu werden&,
 ist wie ein Drive-By&."

{	Fw("fwm���B_�ʏ�_normal");}
//�y��҂a�z
<voice name="��҂a" class="��҂a" src="voice/dm00/5000170e36">
"Das ist ziemlich mies&."

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
	TextBoxDelete(0);

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0090]
Sie scheinen ueber Rhyme zu sprechen&.

Rhyme ist ein Avatar Online-Multiplayer Kampfspiel&.

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0091]
Wenn die Gegner ihr Bewusstsein Online verbinden&, 
koennen sie einen virtuellen Kaempfe erleben der sich real anfuehlt&.

Es gibt keinerlei Benachrichtigungen wo und wann es gespielt wird&. 

Wenn Usui&, welche das Spiel regelt&, auftaucht wird der Ort zum Rhyme Feld&.

Am Anfang war das Spiel ein Amatuer-Projekt; 
Es gab keine Usui und nur lose Regeln&.

Als das Spiel belieter wurde&, kaufte Toue Inc&. Rhyme&.

Dann wurde mit dem Hinzufuegen von Regeln und Usui Rhyme das&, 
was es heute ist&.

Tja&, da ich Rhyme nicht spiele betrifft es mich nicht&.

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
	TextBoxDelete(0);

	CreateColorSP("�G����", 25000, "BLACK");
	DrawTransition("�G����", 1000, 0, 1000, 100, null, "cg/data/blind_01_00_0.png", true);

	PrintBG("��w�i", 30000);

	CreateTextureSP("�G�w�i", 100, 0, 0, "cg/bg/m/bg101011_1_���Z����ʂ�\_m.jpg");

	DrawDelete("��w�i", 1000, 100, null, "blind_01_00_1", true);

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0092]
Ich gehe durch die Gasse wieder auf die Aoyagi Strasse&.

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
	TextBoxDelete(0);

	CreateColorSP("�G����", 25000, "BLACK");
	DrawTransition("�G����", 1000, 0, 1000, 100, null, "cg/data/blind_01_00_0.png", true);

//�����t�@�C��["dm0060.nss"]

}
