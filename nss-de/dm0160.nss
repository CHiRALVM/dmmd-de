//<continuation number="450">
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


scene dm0160.nss_MAIN
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
	#bg101031_1_���Z����ʂ藠�H�n�g���J=true;

	//�����[�g�t���O�A�I�����A����GameName
	$PreGameName = $GameName;
	$GameName = "dm0160sl.nss";

}


scene dm0160.nss
{

	//���V�[���̓��ɕK���L�q
	$�X�N���v�g�o�[�W���� = " $Revision:  $";
	$�\���� = ModuleFileName();
	$�\���� = $SYSTEM_present_process;
	SystemInit();


//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\

	PrintBG("��w�i", 30000);

	CreateColorSP("�G�F��", 5000, "000000");

	OnBG(10,"bg101011_1_���Z����ʂ�\");
	FadeBG(0,true);

	Delete("��w�i");

	SoundPlay("@dm002",0,450,true);

	CreateSE("SE01","se��_����_���l������ʂ�01L");
	MusicStart("SE01",1000,700,0,1000,null,true);

	DrawDelete("�G�F��", 1000, 100, null, "blind_01_00_1", true);

	Fw("fw���t_�ʏ�_shock");
//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0010]
//�y���t�z
<voice name="���t" class="���t" src="voice/dm01/6000010a01">
"Hmm&, war es schneller da entlang zu gehen?"

{
	Fw("fwAM�@_�ʏ�_normal");
}
//�y�@�z
<voice name="�@" class="�@" src="voice/dm01/6000020a06">
"Ja&."

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0011]
Ich laufe durch die Aoyagi Strasse waehrend Ren navigiert&.
Ich laufe durch die Aoyagi Strasse waehrend Ren navigiert&.

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
	TextBoxDelete(0);

	SetVolumeEX("SE*", 2000, 0, null);

	CreateColorSP("�G����", 25000, "BLACK");

	DrawTransition("�G����", 1000, 0, 1000, 100, null, "cg/data/blind_01_00_0.png", true);

	OnBG(10,"bg101031_1_���Z����ʂ藠�H�n�g���J");
	FadeBG(1000,true);

	DrawDelete("�G����", 1000, 100, null, "blind_01_00_1", true);

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0012]
In dieser leisen Strasse zwischen den Gebaueden&, 
ist hier und dort ein Tag-Art das mir bekannt vorkommt&.

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
	TextBoxDelete(0);

	CreatePlainSP("�G��", 5000);

	CreateMaskSetSPTate("�G�}�X�N��", 110);
	CreateTextureSP("�G�}�X�N��/�G�摜", 100, Center, Middle, "cg/ef/efl���S�g���J.jpg");

	FadeDelete("�G��", 100, null, false);

	OpenTateMask("�G�}�X�N��",200, 1300,Dxl3,true);

	Wait(500);

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0013]
Beni-Shigure&. Koujakus Rib-Team&.

Rib Teams beanspruchen ihr Terrain mit Tag-Art&. 
Dieses Areal gehoert Koujakus Team&.

Koujakus Team ist nicht besonders gross&.
Viele Wissen gar nicht das Koujaku ein Ribster ist&.

Er umgibt sich mit beliebten Frauen und aergert damit viele Typen&. 
Er kaempft sehr oft&.

Aber hat noch nie verloren&.

{
	CloseTateMask("�G�}�X�N��",200,Dxl3,true);
}
Bevor er es selbst bemerkt hat&, folgten ihm viele Maenner&, 
die seine Siege bewunderten und so formte sich ein Team&.

Trotzdem&, weil er sich um sie kuemmert ohne Grausam zu sein&, 
denke ich das sein Charakter auch ihnen gefallen muss&.

Wenn du dich auf ihn verlaesst&, kannst du nicht wirklich beschweren&.

Oft versammeln sich Teammitglieder weil sie den Anfuehrer bewundern und 
wie er sein wollen&.

Vielleicht gibt es deshalb hier in Benishigures Territorium 
viele Maenner in japanischen Kleidung ohne Hakama&.

Wenn man sie zum ersten Mal sieht wirken sie vielleicht boesartig&, 
aber sie sind alle gute Menschen&.

Sie helfen alten Damen mit schwerem Gepaeck&, oder suchen nach den Eltern eines 
Kindes&, das sich verwirrt hat&.

Deshalb ist Beni-Shigure ziemlich beliebt im Old Resident District&. 
Dank Koujaku&.&.&. wahrscheinlich&.&.

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

//	Fw("fwm�g���`�[��A_�ʏ�_normal");
//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0020]
//�y�g�������o�[�`�z
<voice name="�g�������o�[�`" class="�g�������o�[�`" src="voice/dm01/6000030e47">
"Yo&, Aoba&."

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

	Fw("fw���t_�ʏ�_normal");
//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0030]
//�y���t�z
<voice name="���t" class="���t" src="voice/dm01/6000040a01">
"Hey&."

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0031]
Ich begruesse ein Mitglied das ich kenne&.

Ein paar andere Mitglieder reden mit einem Polizisten&.

Die Polizei des Old Resident District ist nicht der ehrlichste Haufen&, 
aber abhaenig von Geld und Laune haben sie auch mit den Inselbewohnern Umgang&.

Manche Ribster beziehen ueber die Polizisten Informationen&,
oder lassen sie ueber Dinge rueberschauen&, 
falls sie etwas uebersehen haben&.

Tja&, was immer ihnen passt&.

Waehrend ich weiter die Strasse herunterlaufe&, hoere ich eine schrecklich 
ausgelassene Stimme vor mir&.

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0032]
Drei Personen und ein Mann und zwei Frauen laufen mir entgegen&. Die Frauen kuscheln
sich an den Mann&, schieben und draengeln&.

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

	Fw("fwm�M����A_�ʏ�_normal");
//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0033]
//�y�t�@���̏��q�`�z
<voice name="�t�@���̏��q�`" class="�t�@���̏��q�`" src="voice/dm01/6000050e49">
"Oh&, hoer auf&, dummer Koujaku-san!"

{
	Fw("fwm�M����B_�ʏ�_normal");
}
//�y�t�@���̏��q�a�z
<voice name="�t�@���̏��q�a" class="�t�@���̏��q�a" src="voice/dm01/6000060e50">
"Aber ich liebe auch das an dir!"

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

	Fw("fw�g��_�ʏ�_smile2");
//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0034]
//�y�g���z
<voice name="�g��" class="�g��" src="voice/dm01/6000070a02">
"Ahahahahaha!"

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

	Fw("fw���t_�ʏ�_sigh");
//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0040]
//�y���t�z
<voice name="���t" class="���t" src="voice/dm01/6000080a01">
"&.&.&.&.&."

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);


//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0041]
&.&.&.Ich wusste es&.

Natuerlich ist der Typ welcher zwischen den beiden Frauen eingeklemmt ist&,
Koujaku&. Ich will nicht in so einer Situation an ihn geraten&.&.&.

Ich moechte sie vermeiden&, aber sie kommen immer Naeher und ich habe keine Wahl&.

{
	St("C",740, @0,@0,"st�g��_�ʏ�_smile");
	FadeSt("C",200,true);
}
//�y�g���z
<voice name="�g��" class="�g��" src="voice/dm01/6000090a02">
"Oh! Tja wenn das nicht Aoba ist!"

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

	Fw("fw���t_�ʏ�_fake");
//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0042]
//�y���t�z
<voice name="���t" class="���t" src="voice/dm01/6000100a01">
"&.&.&.Na du&."

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

	DeleteFw();
	DeleteAllSt(200,true);
//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0050]
Koujakus Gesichtausdruck wird zu einem heiteren Laecheln&.

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

	Fw("fwAM�x�j_�ʏ�_normal");
//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0051]
//�y�x�j�z
<voice name="�x�j" class="�x�j" src="voice/dm01/6000110b16">
"Aoba&. Geht es Ren gut?"

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);


//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0052]
Neben Koujaku fliegt sein Allmate&, Beni&. 
Ren blickt aus der Tasche&.

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

	CreateSE("SE01","se�l��_����_�ߎC��03");
	MusicStart("SE01",0,700,0,1000,null,false);
	SetVolumeEX("SE*", 2000, 0, null);

	Fw("fwAM�@_�ʏ�_normal");
//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0053]
//�y�@�z
<voice name="�@" class="�@" src="voice/dm01/6000120a06">
"Ich bin hier&."

{
	SetVolumeEX("SE*", 1000, 0, null);
	Fw("fwAM�x�j_�ʏ�_normal");
}
//�y�x�j�z
<voice name="�x�j" class="�x�j" src="voice/dm01/6000130b16">
"Hoo&, ich verstehe&."

{
	Fw("fwm�M����A_�ʏ�_normal");
}
//�y�t�@���̏��q�`�z
<voice name="�t�@���̏��q�`" class="�t�@���̏��q�`" src="voice/dm01/6000140e49">
"Oh&, Koujaku-san&, ist das dein Freund?"

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);


//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0060]
Die Frau schaut mich verurteilend an&.

{
	St("C",740, @0,@0,"st�g��_�ʏ�_normal");
	FadeSt("C",200,true);
}
//�y�g���z
<voice name="�g��" class="�g��" src="voice/dm01/6000150a02">
"Ja&, von Kindheit an&."

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

	Fw("fwm�M����B_�ʏ�_normal");
//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0061]
//�y�t�@���̏��q�a�z
<voice name="�t�@���̏��q�a" class="�t�@���̏��q�a" src="voice/dm01/6000160e50">
"Oh&, ist das so? Dieser Junge?"

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0062]
&.&.&.Nun denn&. Es tut mir Leid das der Freund aus Koujakus Kindheit sich nicht 
mit ihm messen kann&.

Obwohl wir sagen das wir "von Kindheit an" Freunde waren&, ist es nicht so&,
dass wir die ganze Zeit als wir klein waren zusammen verbracht haben&.

Urspruenglich stammt Koujaku vom Festland und kam mit seiner Mutter 
auf die Insel&.

Er war drei&, vier Jahre auf der Insel und kehrte dann mit seiner Mutter 
aufs Festland zurueck&.

Diese Zeit war muessig und etwa drei Jahre spaeter&, kam er ploetzlich alleine wieder&.

Ich war ueberrascht als er wiederkam&, war er ziemlich unbeugsam&, aber sein 
Gesichtsausdruck&, sein Laecheln und die Art wie er redet&, veraenderte sich nicht&.

Dann hingen wir wieder miteinander rum und er kam oft zu mir nach Hause&,
um mit mir Grossmutters Essen zu verschlingen&.

{
	St("C",740, @0,@0,"st�g��_�ʏ�_normal2");
	FadeSt("C",200,true);
}
//�y�g���z
<voice name="�g��" class="�g��" src="voice/dm01/6000170a02">
"Was ist mit dir los?"

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

	Fw("fw���t_�ʏ�_normal2");
//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0070]
//�y���t�z
<voice name="���t" class="���t" src="voice/dm01/6000180a01">
"Was meinst du?"

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

	St("C",740, @0,@0,"st�g��_�ʏ�_cool");
	FadeSt("C",200,true);
//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0071]
//�y�g���z
<voice name="�g��" class="�g��" src="voice/dm01/6000190a02">
"Du siehst nicht so heiss aus&."

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

	Fw("fw���t_�ʏ�_worry4");
//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0072]
//�y���t�z
<voice name="���t" class="���t" src="voice/dm01/6000200a01">
"! &.&.&.Es ist nichts&, wirklich&."

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

	St("C",740, @0,@0,"st�g��_�ʏ�_normal2");
	FadeSt("C",200,true);
//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0073]
//�y�g���z
<voice name="�g��" class="�g��" src="voice/dm01/6000210a02">
"Wirklich? Dann ist ja alles in Ordnung&."

Ich verhalte mich ruhig&, aber eigentlich bin ich ueberrascht&.
Ich habe definitiv immernoch ein wenig Kopfschmerzen&.

Sehe ich wirklich so krank aus?

{
	St("C",740, @0,@0,"st�g��_�ʏ�_normal");
	FadeSt("C",200,true);
}
//�y�g���z
<voice name="�g��" class="�g��" src="voice/dm01/6000220a02">
"Arbeitest du gerade?"

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

	Fw("fw���t_�ʏ�_cranky3");
//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0080]
//�y���t�z
<voice name="���t" class="���t" src="voice/dm01/6000230a01">
"Yup&. Nicht wie eine gewisse andere Person&."

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0081]
sage ich sarkastisch und die Frauen neben Koujaku reagieren bevor er selbst es kann&.

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

	Fw("fwm�M����A_�ʏ�_normal");
//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0082]
//�y�t�@���̏��q�`�z
<voice name="�t�@���̏��q�`" class="�t�@���̏��q�`" src="voice/dm01/6000240e49">
"Tja! Es ist nicht so das Koujaku-san hier rumalbert&, weisst du?"

{
	Fw("fwm�M����B_�ʏ�_normal");
}
//�y�t�@���̏��q�a�z
<voice name="�t�@���̏��q�a" class="�t�@���̏��q�a" src="voice/dm01/6000250e50">
"Ja&, sogar jetzt eskortiert er uns nur zwischen der Arbeit&."

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

	Fw("fw���t_�ʏ�_sigh");
//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0090]
//�y���t�z
<voice name="���t" class="���t" src="voice/dm01/6000260a01">
"&.&.&.&.&."

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

	St("C",740, @0,@0,"st�g��_�ʏ�_smile");
	FadeSt("C",200,true);
//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0091]
//�y�g���z
<voice name="�g��" class="�g��" src="voice/dm01/6000270a02">
"Oh sag das nicht&. Trotzdem&, es stimmt wenn ich mich mit
 suessen Damen umgebe&, kann ich nicht arbeiten&."

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

	Fw("fwm�M����A_�ʏ�_normal");
//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0092]
//�y�t�@���̏��q�`�z
<voice name="�t�@���̏��q�`" class="�t�@���̏��q�`" src="voice/dm01/6000280e49">
"Kyah!"

{
	Fw("fwm�M����B_�ʏ�_normal");
}
//�y�t�@���̏��q�a�z
<voice name="�t�@���̏��q�a" class="�t�@���̏��q�a" src="voice/dm01/6000290e50">
"Oh&, Koujaku-san!"

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);


//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0093]
Jedesmal wenn er so etwas sagt&, wuerde das nicht jeden anderen aufregen&.&.&.?

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

	Fw("fwAM�x�j_�ʏ�_normal");
//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0094]
//�y�x�j�z
<voice name="�x�j" class="�x�j" src="voice/dm01/6000300b16">
"Es ist beschaemend wenn ein Mann&, eine Frau die sich ihm anbietet ablehnt&, richtig?"

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

	St("C",740, @0,@0,"st�g��_�ʏ�_smile2");
	FadeSt("C",200,true);
//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0100]
//�y�g���z
<voice name="�g��" class="�g��" src="voice/dm01/6000310a02">
"Genau&. Frauen sind die Schaetze dieser Welt&. Sie sind weich und liebevoll&, und 
 werden einen Mann zaertlich umarmen&. Deshalb ist es die Pflicht des Mannes 
 Frauen Wert zu schaetzen&. Habe ich recht?"

{
	CreateSE("SE01","se�l��_����_����01");
	MusicStart("SE01",0,700,0,1000,null,false);
	CreateSE("SE02","se�l��_����_�ߎC��17");
	MusicStart("SE02",0,600,0,1000,null,false);

	DeleteAllSt(200,true);
}
Koujaku legt seine Arme ueber die Schultern der Frauen&.

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

	DeleteAllSt(200,true);

	Fw("fwm�M����A_�ʏ�_normal");
//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0101]
//�y�t�@���̏��q�`�z
<voice name="�t�@���̏��q�`" class="�t�@���̏��q�`" src="voice/dm01/6000320e49">
"Kyaaaaah!!!"

{
	Fw("fwm�M����B_�ʏ�_normal");
}
//�y�t�@���̏��q�a�z
<voice name="�t�@���̏��q�a" class="�t�@���̏��q�a" src="voice/dm01/6000330e50">
"Jetzt kann ich gluecklich sterben!"

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0102]
&.&.&.&.&.

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

	Fw("fw���t_�ʏ�_sigh3");
//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0103]
//�y���t�z
<voice name="���t" class="���t" src="voice/dm01/6000340a01">
"&.&.&.Tja dann&, ich gehe dann mal&."

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

	Fw("fwm�M����B_�ʏ�_normal");
//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0110]
//�y�t�@���̏��q�a�z
<voice name="�t�@���̏��q�a" class="�t�@���̏��q�a" src="voice/dm01/6000350e50">
"Hm? Warte eine Sekunde&. Hey!"

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);


//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0111]
Waehrend ich angeekelt da stehe&, bereit zu gehen&, ruft mich eine der Frauen&.

{
	Fw("fwm�M����B_�ʏ�_normal");
}
//�y�t�@���̏��q�a�z
<voice name="�t�@���̏��q�a" class="�t�@���̏��q�a" src="voice/dm01/6000360e50">
"Hier&, Ich wusste es&. Da ist Schmutz&."

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

	CreateSE("SE01","se�l��_����_�@��01");
	MusicStart("SE01",0,500,0,1500,null,false);

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0112]
Die Frau streckt ihre mageren Finger aus und beruehrt leicht den Kragen meiner Jacke&.

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

	Fw("fw���t_�ʏ�_shock2");
//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0113]
//�y���t�z
<voice name="���t" class="���t" src="voice/dm01/6000370a01">
"&.&.&.Ah&, danke&."

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

	St("C",740, @0,@0,"st�g��_�ʏ�_normal");
	FadeSt("C",200,true);
//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0114]
//�y�g���z
<voice name="�g��" class="�g��" src="voice/dm01/6000380a02">
"Wie erwartet&. Ich liebe fuersorgliche Frauen&."

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

	DeleteAllSt(200,true);

	Fw("fwm�M����B_�ʏ�_normal");
//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0120]
//�y�t�@���̏��q�a�z
<voice name="�t�@���̏��q�a" class="�t�@���̏��q�a" src="voice/dm01/6000390e50">
"Hee hee&. &.&.&.Oh?"

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);


//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0121]
Die Dame die sich gerade noch darueber gefreut hat von Koujaku gelobt worden zu sein
schaut mich ploetzlich so an&, als haette sie gerade etwas realisiert&.

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

	Fw("fw���t_�ʏ�_normal2");
//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0122]
//�y���t�z
<voice name="���t" class="���t" src="voice/dm01/6000400a01">
"&.&.&.?"

{
	Fw("fwm�M����B_�ʏ�_normal");
}
//�y�t�@���̏��q�a�z
<voice name="�t�@���̏��q�a" class="�t�@���̏��q�a" src="voice/dm01/6000410e50">
"Wenn ich dich jetzt so ansehe&, du hast langes Haar&, oder?"

{
	Fw("fw���t_�ʏ�_worry3");
}
//�y���t�z
<voice name="���t" class="���t" src="voice/dm01/6000420a01">
"&.&.&.!"

{
	Fw("fwm�M����A_�ʏ�_normal");
}
//�y�t�@���̏��q�`�z
<voice name="�t�@���̏��q�`" class="�t�@���̏��q�`" src="voice/dm01/6000430e49">
"Oh&, dass stimmt&. Ist mir gar nicht aufgefallen&."

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

	Fw("fwm�M����B_�ʏ�_normal");
//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0130]
//�y�t�@���̏��q�a�z
<voice name="�t�@���̏��q�a" class="�t�@���̏��q�a" src="voice/dm01/6000440e50">
"Hee hee&, das ist irgendwie suess&."

{
	Fw("fwm�M����A_�ʏ�_normal");
}
//�y�t�@���̏��q�`�z
<voice name="�t�@���̏��q�`" class="�t�@���̏��q�`" src="voice/dm01/6000450e49">
"Sieht aus wie das Haar einer Frau!"

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);


//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0131]
Waehrend sie neckend lacht&, streckt eine der Frauen ihre Hand aus&.


</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

//�����t�@�C��["dm0160sl.nss"]

}
