//<continuation number="190">
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


scene dm0140.nss_MAIN
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
	#bg104031_5_���t���=true;
	#bg104041_3_���t��x�����_=true;
	#bg001011_1_�ɓ��S�i=true;

	#MF_0140���[�r�[�P=true;
	#MF_0140���[�r�[�Q=true;
	#MF_0140���[�r�[�R=true;
	#MF_0140���[�r�[�S=true;

	//�����[�g�t���O�A�I�����A����GameName
	$PreGameName = $GameName;
	$GameName = "dm0150.nss";

}


scene dm0140.nss
{

	//���V�[���̓��ɕK���L�q
	$�X�N���v�g�o�[�W���� = " $Revision:  $";
	$�\���� = ModuleFileName();
	$�\���� = $SYSTEM_present_process;
	SystemInit();


//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\

	PrintBG("��w�i", 30000);

	OnBG(10,"bg104031_5_���t���");
	FadeBG(0,true);

	CreateSE("SE01","se����_���t��Ɩ�_�_��01");
	MusicStart("SE01",0,700,0,1000,null,false);

	Wait(500);

	FadeDelete("��w�i", 1000, null, true);

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0010]
Ich betrete den Raum und nehme Ren&, welcher im Schlafmodus ist&,
aus meiner Tasche und starte ihn&.

Mein Kopf schmerzt immer noch&.&.&.

Ich denke darueber nach frische Luft zu schnappen und gehe auf die Veranda&.

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
	TextBoxDelete(0);

//�����t����_�x�����_���J��
	CreateSE("SE01","se����_���t������_�J��01a");
	MusicStart("SE01",0,700,0,1000,null,false);
	OnBG(10,"bg104041_3_���t��x�����_");
	FadeBG(1000,true);

	Wait(500);

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0020]
Ich gehe auf die Veranda und lehne mich an das Gelaender&.
Der kuehle Wind fuehlt sich angenehm an&.

{
	SoundPlay("@dm012",0,450,true);
}
Ich atme kurz aus und schaue in den Himmel&, nur die eckigen Schatten der Gebauede 
sind im Weg&.

Die Szenerie ist nicht so wie sie mal war&.
Es war schoener&. Diese Insel&.&.&.

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
	TextBoxDelete(0);

	CreatePlainSP("�G��", 5000);

	OnBG(10,"bg001011_1_�ɓ��S�i");
	FadeBG(0,true);

	CreateTextureSP("�G�w�i", 200, Center, Middle, "cg/bg/bg001011_1_�ɓ��S�i.jpg");
	CreateTextureSP("�G�w�i��", 100, 0, InBottom, "cg/bg/m/bg001011_1_�ɓ��S�i_m.jpg");

	Move("�G�w�i��", 0, @-70, @80, null, true);

	FadeDelete("�G��", 1000, Dxl1, true);

	Wait(500);

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0021]
Midorijima schwimmt in der entfernten See suedwestlich der japanischen 
Island Honshu&.

Verkaufsargumente dieser Insel waeren die blaue See&, weisser Sand und das 
weitverbreitete Blattwerk&.

&.&.&.zumindest waren sie es einmal&. 

Das sind alles Geschichten aus der Vergangenheit&.


</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
	TextBoxDelete(0);

	Move("�G�w�i��", 1000, @70, @-50, Dxl1, false);
	FadeDelete("�G�w�i", 1000, Dxl1, true);

	Wait(500);

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0022]
Nun nimmt allein Platinum Jail auf der oestlichen Seite etwa ein Drittel der Insel ein&.

Da das Old Resident District und Platinum Jail durch eine Mauer getrennt sind&, 
koennen wir nicht auf die andere Seite sehen&.

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
	TextBoxDelete(0);

//�e�F���]�̊�o���͂��Ȃ������悢���Ǝv�����̂ŃV���G�b�g�ł��B
	CreatePlainSP("�G��", 5000);

	CreateTextureSP("�G���G", 550, Center, InBottom, "cg/bu/bu���]_�ʏ�_normal.png");
	CreateStencil("�G�}�X�N�P",1500,center,InBottom,128,"cg/bu/bu���]_�ʏ�_normal.png",false);
	CreateColorSP("�G�}�X�N�P/�G�F�P", 1000, 0, 0, 800, 600, "BLACK");

	SetAlias("�G�}�X�N�P","�G�}�X�N�P");

	Move("�G�}�X�N�P", 0, @0, @40, null, true);
	Move("�G���G", 0, @0, @40, null, true);

	DrawTransition("�G�}�X�N�P/�G�F�P", 0, 0, 400, 300, null, "cg/data/slide_02_00_0.png", true);

	CreateTextureSP("�G���S", 500, Center, Middle, "cg/ef/efl���S���].jpg");

	FadeDelete("�G��", 1000, null, true);

	Wait(500);

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0025]
Ich habe die Vertreter von Toue Inc&.&, die Firma welche Platinum Jail gebaut hat&, 
schon mehrfach im Fernsehen und Netz gesehen&.

Als ich noch ein Kind war&, hat Toue Inc&. anscheinend verlangt das die Insel waehrend 
des Baus von Platinum Jail gerauemt wird&.

Trotzdem&, den Einwohnern wurden luxorioese Haeuser und Geld versprochen&, 
deshalb gingen die meisten von Ihnen nach Verhandlungen mit Toue&.

Doch es gab immernoch ein paar sture Einwohner die nicht gehen wollten&. 
Wir gehoerten dazu&.

Egal welche Konditionen angeboten wurden&, sie konnten ihre Heimatstadt in der sie 
geboren und aufgezogen worden sind nicht verlassen; Sie ignorierten die 
Rauemungsbescheide wieder und wieder&.

Nach einiger Zeit hoerte man nichts mehr von Toues Seite&.

Sie gaben auf&, da sie angeblich "Niemanden zwingen wollen&."

Aber tatsaechlich gaben sie die uebrigen Einwohner einfach auf&.

Wenn du keine Verhandlung willst&, soll es so sein&. 
Leb oder Stirb&, es liegt in deiner Hand&.

Und dann zeigte Toue sein wahres Gesicht&.

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
	TextBoxDelete(0);

	CreatePlainSP("�G��", 5000);

	Delete("�G�}�X�N*");
	Delete("�G�}�X�N�P/�G*");
	Delete("�G���S");
	Delete("�G���G");
	Delete("�G�w�i*");
	CreateTextureSP("�G�w�i", 200, Center, Middle, "cg/bg/bg001011_1_�ɓ��S�i.jpg");
	CreateTextureEXsub("�G�w�i��", 205, Center, Middle, "cg/bg/bg001011_1_�ɓ��S�i.jpg");
	Fade("�G�w�i��", 0, 600, null, true);

	FadeDelete("�G��", 800, null, true);

	Wait(500);

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0030]
Sie sagten das sie die Infrastruktur der Insel warten wuerden und schraenkten 
die Wasser-&, Gas- und Warenzufuhr ein&. So wurden die uebrig gebliebenen 
Einwohner in das Old Resident District vertrieben&.

Das einst so schoene Midorijima war ruiniert&.&.&. Egal wie man es
umschreiben moechte&, ein Land kann solch eine Tyrannei nicht dulden&. 

Die Einwohner&, die das glaubten&, appellierten ans Festland&.

Aber da seitdem nichts geschehen ist&, ist es zwecklos auf Besserung zu hoffen&.

Seit vor etwa drei Jahren brauchte man&, wenn man ans Festland wollte&, 
die Erlaubnnis des Verwaltungsbueros&, welches Toue gehoert&.

Anders gesagt&, die Einwohner koennen die Insel nicht ohne Toues Erlaubnis verlassen&.

So eine Erlaubnis wird nie erteilt&. Niemals&.

Es ist Toues Art zu zeigen&, dass die jenigen welche die Rauemungen ignoriert haben&,
einen Fehler begangen haben&.

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
	TextBoxDelete(0);

	SetVolumeEX("@dm*", 2000, 0, null);

	CreatePlainSP("�G��", 5000);

	Delete("�G�w�i*");
	OnBG(10,"bg104041_3_���t��x�����_");
	FadeBG(0,true);

	FadeDelete("�G��", 500, null, true);

//���y�������i�@�̑����E�x�����_�j
	CreateSE("SE01","se����_����_����@01");
	MusicStart("SE01",0,700,0,1000,null,false);

	SetVolumeEX("SE*", 1200, 0, null);


//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0031]
Waehrend ich ins Weltall starre&, hoere ich etwas an meinen Fuessen&.

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

	Fw("fwAM�@_�ʏ�_normal");
//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0040]
//�y�@�z
<voice name="�@" class="�@" src="voice/dm01/4000010a06">
"Aoba&. Was machst du mit den Daten die du heute heruntergeladen hast?"

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

	Fw("fw���t_�ʏ�_shock2");
//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0041]
&.&.&.?

//{	Fw("fw���t_�ʏ�_shock");} <-Freeze
//�y���t�z
<voice name="���t" class="���t" src="voice/dm01/4000020a01">
"&.&.&.Heruntergeladen?"

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
	TextBoxDelete(0);

	CreateSE("SE01","se�l��_����_�ߎC��05");
	MusicStart("SE01",0,700,0,1000,null,false);
	SetVolumeEX("SE*", 1000, 0, null);
	DeleteFw();
	SoundPlay("@dm002",0,450,true);

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0050]
Ich habe mich ans Geruest gelehnt&, doch Rens Worte
vergraemen mich und ich richte mich auf&.

&.&.&.Das stimmt. Ich habe es komplett vergessen&. Es war als die Balgen in den Laden 
gestuermt sind&.

Bevor ich es bemerkte erschien ein "Download abgeschlossen" Bildschirm&.
War es&.&.&.?

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

	Fw("fw���t_�ʏ�_shock2");
//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0051]
//�y���t�z
<voice name="���t" class="���t" src="voice/dm01/4000030a01">
"Enthalten die Daten einen Virus?"

{	Fw("fwAM�@_�ʏ�_normal");}
//�y�@�z
<voice name="�@" class="�@" src="voice/dm01/4000040a06">
"Ich habe nichts gefunden&."

{	Fw("fw���t_�ʏ�_normal2");}
//�y���t�z
<voice name="���t" class="���t" src="voice/dm01/4000050a01">
"Inhalt?"

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

	Fw("fwAM�@_�ʏ�_normal");
//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0060]
//�y�@�z
<voice name="�@" class="�@" src="voice/dm01/4000060a06">
"Es ist eine Art von Spiel in der sich der Spieler bewegt und Informationen 
 sammelt in dem er einen Charakter manipuliert&, gegen Gegner kaempft&, 
 Erfahrung sammelt und sein Level steigert&."

{	Fw("fw���t_�ʏ�_normal");}
//�y���t�z
<voice name="���t" class="���t" src="voice/dm01/4000070a01">
"Ah&, ein RPG&, huh? Muss ich etwas bezahlen?"

{	Fw("fwAM�@_�ʏ�_normal");}
//�y�@�z
<voice name="�@" class="�@" src="voice/dm01/4000080a06">
"Es ist kostenlos&."

{	Fw("fw���t_�ʏ�_normal2");}
//�y���t�z
<voice name="���t" class="���t" src="voice/dm01/4000090a01">
"Huh&.&.&. also habe ich nicht wegen den Balgen etwas gekauft&. 
 Ist es eine Demo?"

{	Fw("fwAM�@_�ʏ�_normal");}
//�y�@�z
<voice name="�@" class="�@" src="voice/dm01/4000100a06">
"Das ist unbekannt&."

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

	Fw("fw���t_�ʏ�_smile");
//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0070]
//�y���t�z
<voice name="���t" class="���t" src="voice/dm01/4000110a01">
"Tja&, wenn es nicht seltsam ist koennte ich es ausprobieren&. 
 Einfach nur um Zeit tot zu schlagen&."

{	Fw("fwAM�@_�ʏ�_normal");}
//�y�@�z
<voice name="�@" class="�@" src="voice/dm01/4000120a06">
"Soll ich es starten?"

{	Fw("fw���t_�ʏ�_normal");}
//�y���t�z
<voice name="���t" class="���t" src="voice/dm01/4000130a01">
"Bitte&."

{	Fw("fwAM�@_�ʏ�_normal");}
//�y�@�z
<voice name="�@" class="�@" src="voice/dm01/4000140a06">
"Verstanden&."

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
	TextBoxDelete(0);

	DeleteFw();

	CreateSE("SE01","se����_���t������_�J��01a");
	MusicStart("SE01",0,700,0,1000,null,false);
	OnBG(10,"bg104031_5_���t���");
	FadeBG(1000,true);

	Wait(1000);

	CreatePlainSP("�G��", 5000);

	CreateTextureSP("�G�w�i", 100, 0, Middle, "cg/bg/m/bg104031_5_���t���_m.jpg");

	Move("�G�w�i", 0, @0, @-80, null, true);

	CreateSE("SE01","se����_�x�b�h_�|�ꍞ��");
	MusicStart("SE01",0,700,0,1000,null,false);
	Move("�G�w�i", 500, @0, @-40, null, false);
	FadeDelete("�G��", 500, null, true);

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0071]
Ich nehme Ren in meinen Arm&, gehe zurueck ins Zimmer und setze mich auf mein Bett&.

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
	TextBoxDelete(0);

	SetVolumeEX("@dm002", 1000, 0, null);

	//���@�R�C�����o�ݒu�P
	CoilIntoSet();
	//���@�R�C�����o�ݒu�Q
	CoilStartSet();
	//���E�摜�ݒu�wCoilPictSet(X�ʒu,Y�ʒu,"�摜�p�X")�x
	CoilPictSet(303,16,"cg/ef/ef�R�C���摜�\���̈捕.png");
//	CoilPictSet(303,16,"dx/mvdot014_eng.ngs");

	//���@�R�C�����o�\��
	CoilStartFade();
	//���E�摜�\���Q�i���[���_�E�����[�h����̕\���j
	CoilPictFade_Down();

	//���R�C���҂�
	CoilWait();

	//���E�ǉ��摜�ݒu�wCoilPictCon("�i�b�g��","�摜�p�X")�x
	CoilPictCon("0140���[�r�[�P","dx/mvdot014_eng.ngs");
	//���E�ǉ��摜�ݒu�wCoilPictCon("�i�b�g��","�摜�p�X")�x
	CoilPictCon("�Q","dx/mvdot014aloop_eng.ngs");

	//���E�ǉ��摜�u�ԕ\��
	CoilPictFadeChan("0140���[�r�[�P");
	//���E�摜�`��ҋ@���[�r�[�p
	CoilPictWaitSkip("0140���[�r�[�P");
	//���E�ǉ��摜�u�ԕ\��
	CoilPictFadeChan("�Q");


//�҂�
//	CoilPictWait();
//	CoilPictCon("�Q","dx/mvdot014aloop_eng.ngs");
//	CoilPictFadeChan("�Q");
	Wait(500);



//�e�F���L���[�r�[�H

//�����o�F���g���Q�[��
//�����o�F�t�@�~�R������ʁ������̕\��
//���r�d�F�t�@�~�R������ʁ������̕\���i�|�|�|�|���j

//���Q�[�����e
//�@������
//�@�u�������āE�E�E�v

//�@������
//�@�u���ꂩ�A�������Ă��������E�E�E�v

//�@������
//�@�u���ꂩ�A��������@�����āE�E�E�v

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//<PRE @box0>
//[text0080]

//</PRE>
//	SetText();
//	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

	Fw("fw���t_�ʏ�_shock");
//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0090]
//�y���t�z
<voice name="���t" class="���t" src="voice/dm01/4000150a01">
"Das ist wirklich retro&."

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);


//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0091]
Kio&, Nao und Mios Generation haben so etwas wahrscheinlich noch nie gesehen&.

Ich habe diese Art von alten Spielen nirgendwo&, ausser auf Videoseiten gesehen&.

Nachdem die Nachricht der Prinzessin vorbei war&,
erscheint ein Titelbildschirm&.

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
	TextBoxDelete(0);

//�����o�F���g���Q�[��
//�����o�F�����g���Q�[���^�C�g���uSilent Oath�v

	//���E�ǉ��摜�ݒu�wCoilPictCon("�i�b�g��","�摜�p�X")�x
	CoilPictCon("0140���[�r�[�Q","dx/mvdot014a_eng.ngs");
	CoilPictCon("0140���[�r�[�R","dx/mvdot014b.ngs");
	CoilPictCon("�T","dx/mvdot014bloop.ngs");

	//���E�ǉ��摜�u�ԕ\��
	CoilPictFadeChan("0140���[�r�[�Q");
	//���E�摜�`��ҋ@���[�r�[�p
	CoilPictWaitSkip("0140���[�r�[�Q");
	//���E�ǉ��摜�u�ԕ\��
	CoilPictFadeChan("0140���[�r�[�R");
	//���E�摜�`��ҋ@���[�r�[�p
	CoilPictWaitSkip("0140���[�r�[�R");

//	CoilPictFadeChan("�R");
//	CoilPictWait();
//	CoilPictFadeChan("�S");
//	CoilPictWait();

	//���E�ǉ��摜�u�ԕ\��
	CoilPictFadeChan("�T");


//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0092]
&.&.&.Es ist so alt&, es ist fast schon eine erfischende Abwechslung&.

Waehrend ich anfange mich immer seltsamer zu fuehlen&, druecke ich "START"&.

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
	TextBoxDelete(0);

//�����o�F���g���Q�[��
//�����o�F�t�@�~�R������ʂ̕\��
//���r�d�F�Q�[���X�^�[�g
//���r�d�F�Q�[�����ʉ�

	//���E�ǉ��摜�ݒu�wCoilPictCon("�i�b�g��","�摜�p�X")�x
	CoilPictCon("��","cg/ef/ef�R�C���摜�\���̈捕.png");

	CreateSE("SE01","se8bit_�ʏ�_���̑�");
	MusicStart("SE01",0,700,0,1000,null,false);

	Wait(100);

	//���E�ǉ��摜�u�ԕ\��
	CoilPictFadeChan("��");
	Wait(2000);

	//���E�ǉ��摜�ݒu�wCoilPictCon("�i�b�g��","�摜�p�X")�x
	CoilPictCon("0140���[�r�[�S","dx/mvdot014c.ngs");

	SoundPlay("@dm8bit001",0,450,true);

	//���E�ǉ��摜�ݒu�wCoilPictCon("�i�b�g��","�摜�p�X")�x
	CoilPictCon("�Î~��","cg/ef/ef�R�C��mvdot014c.png");

	//���E�ǉ��摜�u�ԕ\��
	CoilPictFadeChan("0140���[�r�[�S");
	//���E�摜�`��ҋ@���[�r�[�p
	CoilPictWaitSkip("0140���[�r�[�S");

	//���E�ǉ��摜�u�ԕ\��
	CoilPictFadeChan("�Î~��");

	Wait(500);

//���Q�[�����e
//���̉��ɗ���
//��
//�ړ�
//��
//�X�i�������A��OK�H�j
//��
//�T�C�h�ɖ؂̂��铹�𒼐i
//��
//�X�𔲂���
//��
//�C�ӂɏo��
//��
//�u�s�n�@�a�d�@�b�n�m�s�h�m�t�d�c�v
//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//<PRE @box0>
//[text0093]

//</PRE>
//	SetText();
//	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

	Fw("fw���t_�ʏ�_shock");
//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0100]
//�y���t�z
<voice name="���t" class="���t" src="voice/dm01/4000160a01">
"Huh? Fortsetzung folgt? Hat das Spiel mehrere Teile?"

{	Fw("fwAM�@_�ʏ�_normal");}
//�y�@�z
<voice name="�@" class="�@" src="voice/dm01/4000170a06">
"Sieht danach aus&."

{	Fw("fw���t_�ʏ�_normal");}
//�y���t�z
<voice name="���t" class="���t" src="voice/dm01/4000180a01">
"Ich verstehe&. Es hat genau die laenge eines Spiels&,
 welches man spielt um Zeit tot zu schlagen&."

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
	TextBoxDelete(0);

	SetVolumeEX("@dm8bit001", 0, 0, null);
	CoilAllDelete(300,-50,370);

	Wait(500);

	SetVolumeEX("@dm002", 2000, 450, null);

	SetVolumeEX("SE*", 1000, 0, null);

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0101]
Ich weiss nicht ob es unterhaltsam war oder nicht&, aber falls
es ein Sequel gibt&, spiele ich es vielleicht&.

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

	FadeDelete("�G�w�i", 500, null, true);

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0102]
Nachdem ich den Spielbildschirm geschlossen habe&, gaehne ich&.

Ich war so aufs Spiel fokusiert&, dass ich gar nicht bemerkt habe
wie muede ich bin&.

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

	CreateSE("SE01","se����_�x�b�h_�Q�Ԃ�");
	MusicStart("SE01",0,700,0,1000,null,false);

	Fw("fw���t_�ʏ�_normal");
//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0103]
//�y���t�z
<voice name="���t" class="���t" src="voice/dm01/4000190a01">
"Ich glaube es ist Zeit sich bettfertig zu machen&."

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0110]
Ich schliesse die Verandatuer und den Vorhang&, bevor ich ins Badezimmer gehe&.

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
	TextBoxDelete(0);

Wait(8);
	SetVolumeEX("@dm*", 2000, 0, null);
	SetVolumeEX("SE*", 1000, 0, null);

	ClearFadeAll(2000, true);

	WaitKey(3000);

//�����t�@�C��["dm0150.nss"]

}
