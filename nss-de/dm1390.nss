//<continuation number="80">
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


scene dm1390.nss_MAIN
{
$TEXTBOX_TYPE="�\�I";
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
	#bg202011_3_�\�I�g�����Ƌ���=true;

	//�����[�g�t���O�A�I�����A����GameName
	$PreGameName = $GameName;
	$GameName = "dm1400.nss";

}


scene dm1390.nss
{

	//���V�[���̓��ɕK���L�q
	$�X�N���v�g�o�[�W���� = " $Revision:  $";
	$�\���� = ModuleFileName();
	$�\���� = $SYSTEM_present_process;
	SystemInit();


//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\

	PrintBG("��w�i", 30000);

	CreateColorSP("�G�F��", 29000, "000000");

	CreateCamera("�b", 0, 0, 15000);
	SetAlias("�b","�b");

	CreateTextureSP("�b/�G���w�i��", 0, Center, Middle, "cg/bg/bg202011_3_�\�I�g�����Ƌ��ԏ�q�����w�i.png");
	CreateTextureSP("�b/�G���w�i��", 0, 374, 147, "cg/bg/bg202011_3_�\�I�g�����Ƌ��ԏ�q��.png");
	CreateTextureSP("�b/�G���w�i�E", 0, 514, 147, "cg/bg/bg202011_3_�\�I�g�����Ƌ��ԏ�q�E.png");

	CreateTextureSP("�b/�G���w�i���ʉ�", -2500, Center, Middle, "cg/bg/bg202011_3_�\�I�g�����Ƌ��ԏ�q�����w�i.png");
	CreateTextureSP("�b/�G���w�i���ʍ�", -2500, 374, 147, "cg/bg/bg202011_3_�\�I�g�����Ƌ��ԏ�q��.png");
	CreateTextureSP("�b/�G���w�i���ʉE", -2500, 514, 147, "cg/bg/bg202011_3_�\�I�g�����Ƌ��ԏ�q�E.png");

	CreateTextureSP("�b/�G���w�i����ʉ�", -11250, Center, Middle, "cg/bg/bg202011_3_�\�I�g�����Ƌ��ԏ�q�����w�i.png");
	CreateTextureSP("�b/�G���w�i����ʍ�", -11250, 374, 147, "cg/bg/bg202011_3_�\�I�g�����Ƌ��ԏ�q��.png");
	CreateTextureSP("�b/�G���w�i����ʉE", -11250, 514, 147, "cg/bg/bg202011_3_�\�I�g�����Ƌ��ԏ�q�E.png");

	//CreateTextureSP("�b/�G���w�i���Q�ʉ�", -7500, Center, Middle, "cg/bg/bg202011_3_�\�I�g�����Ƌ��ԏ�q�����w�i.png");
	//CreateTextureSP("�b/�G���w�i���l�ʍ�", -10000, 374, 147, "cg/bg/bg202011_3_�\�I�g�����Ƌ��ԏ�q��.png");
	//CreateTextureSP("�b/�G���w�i���l�ʉE", -10000, 514, 147, "cg/bg/bg202011_3_�\�I�g�����Ƌ��ԏ�q�E.png");
	//CreateTextureSP("�b/�G���w�i���l�ʉ�", -10000, Center, Middle, "cg/bg/bg202011_3_�\�I�g�����Ƌ��ԏ�q�����w�i.png");

	Request("�b*", Lock);
	Request("�b/�G*", Lock);
	MoveCamera("�b", 0, @0, @0, 1000, AxlDxl, true);
	$DM1390C=1;//�����Ή��p

	Delete("��w�i");
	FadeDelete("�G�F��", 3000, null, true);
	Wait(500);

/*
	MoveCamera("�b", 1000, @0, @0, 3500, AxlDxl, true);

	Move("�b/�G���w�i��", 1000, @-140, @0, DxlAuto, false);
	Move("�b/�G���w�i�E", 1000, @140, @0, DxlAuto, true);

	WaitKey();

	MoveCamera("�b", 1000, @0, @0, 12250, AxlDxl, true);

while(1){

	CreateTextureSP("��w�i", 20000, Center, Middle, "SCREEN");
	Wait(16);
	Move("�b/�G���w�i��", 0, 374, @0, DxlAuto, false);
	Move("�b/�G���w�i�E", 0, 514, @0, DxlAuto, true);
	MoveCamera("�b", 0, @0, @0, 3500, AxlDxl, true);
	FadeDelete("��w�i", 50, null, true);

	Move("�b/�G���w�i��", 1000, @-140, @0, DxlAuto, false);
	Move("�b/�G���w�i�E", 1000, @140, @0, DxlAuto, true);

	//WaitKey();

	MoveCamera("�b", 1000, @0, @0, 12250, AxlDxl, true);

	Wait(300);

	//Move("�b/�G���w�i��", 1000, @-140, @0, DxlAuto, false);
	//Move("�b/�G���w�i�E", 1000, @140, @0, DxlAuto, true);

	//WaitKey();

	$x1++;
	SetFont("�l�r ����", 18, FFFFFF, 000000, MEDIUM, RIGHTDOWN);
	CreateText("Dt1", 30000, 50, 20, 700, 500, $x1);

/*
	CreatePlainSP("�b/�G��", -12000);
	Wait(16);

	WaitKey();

	Move("�b/�G���w�i��", 0, 374, @0, DxlAuto, false);
	Move("�b/�G���w�i�E", 0, 514, @0, DxlAuto, true);
	Move("�b/�G���w�i���ʍ�", 0, 374, @0, DxlAuto, false);
	Move("�b/�G���w�i���ʉE", 0, 514, @0, DxlAuto, true);
	MoveCamera("�b", 0, @0, @0, 3500, AxlDxl, true);
	Delete("�b/�G��");

	WaitKey();
*/

}

*/


//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0010]
I feel like my body is being pulled down&.&.&.

When I open my eyes&, I find myself standing in a gloomy 
room&.

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\

	CreateTextureEX("�G���w�i", 15100, Center, Middle, "cg/bg/l/bg202011_3_�\�I�g�����Ƌ���_l.jpg");
	Zoom("�G���w�i", 0, 900, 900, null, true);
	Zoom("�G���w�i", 800, 1000, 1000, DxlAuto, false);
	Fade("�G���w�i", 500, 1000, null, true);

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0012]
What? &.&.&.A sliding door?

{
	Move("�G���w�i", 2600, @0, -576, DxlAuto, false);
}
The floor is also tatami&. 

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\

	FadeDelete("�G���w�i", 500, null, true);

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0014]
The room is as wide as ten tatami mats&, and there are long candles with flames swaying on a table&.

The scent of the burning candles mix with the faint smell 
of sandlewood&.

Is this&.&.&. inside Koujaku's heart?

This must be from when he was off the island&.

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
	TextBoxDelete(0);

	CreateSE("SE01","se�l��_����_����02");
	MusicStart("SE01",0,700,0,1200,null,false);
	MoveCamera("�b", 4000, @0, @0, 3500, DxlAuto, true);
	SetVolumeEX("SE01", 300, 0, null);

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0020]
I reach out to open the sliding door in front of me&.


</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0021]
//�y�g����z
<voice name="�g����" class="�g����" src="voice/dm13/9000010e03">
"Ugh&, ooh&.&.&. &.&.&.uhhggh&.&.&.&. uck&.&.&.&."


</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0022]
Someone's voice&.
It belongs to a woman&.

I can hear her sobbing&.

Is she on the other side of this door?


</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

	Fw("fw���t_�ʏ�_worry3");
//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0024]
//�y���t�z
<voice name="���t" class="���t" src="voice/dm13/9000020a01">
"&.&.&.&.&."


</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
	TextBoxDelete(0);

	CreateSE("SE01","se����_�h�A��q_���J��01");
	MusicStart("SE01",0,700,0,1000,null,false);
	Move("�b/�G���w�i��", 3000, @-140, @0, DxlAuto, false);
	Move("�b/�G���w�i�E", 3000, @140, @0, DxlAuto, true);

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0025]
I feel a little nervous&, and gently slide the door open&.

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

//���r�d�F���[���Ə�q���J����

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0030a]
And on the other side of the door is the exact same room I was in&.

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\

	CreateSE("SE01","se�[��_�h��_������01L");
	MusicStart("SE01",0,1200,0,1000,null,true);
	CreateColorSP("�G�F��", 18000, "FFFFFF");
	Wait(30);
	FadeDelete("�G�F��", 70, null, true);
	BGPlainShake(18000,300,0,20,0,0,1000,null,true);
	SetFrequency("SE01", 10000, 800, Axl3);
	SetVolumeEX("SE01", 3000, 0, null);

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0030b]
When I go inside&, I feel something slithering up to my 
knee&.


</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);


	Fw("fw���t_�ʏ�_shock2");
//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0031]
//�y���t�z
<voice name="���t" class="���t" src="voice/dm13/9000030a01">
"!"


</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

	SoundPlay("@dm017",5000,450,true);

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0032]
Something like a bundle of black hair&.&.&. is entwining 
itself around my leg&.


</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

//���r�d�F���������ƍ����h�̑�Q�������o�Ă���

{	Fw("fw���t_�ʏ�_worry4");}
//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0033]
//�y���t�z
<voice name="���t" class="���t" src="voice/dm13/9000040a01">
"Wha&.&.&.!?"

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

	CreateSE("SE01","se�[��_�h��_������01L");
	MusicStart("SE01",0,800,0,1000,null,true);
	CreateColorSP("�G�F��", 18000, "#FFFFFF");
	CreateTextureEXover("�G����", 17100, Center, Middle, "cg/ef/ef�����h���������04.png");
	SetVertex("�G����", center, bottom);
	Zoom("�G����", 0, 2500, 1500, null, true);
	Fade("�G����", 0, 1000, null, true);
	Wait(30);
	Fade("�G�F��", 70, 0, null, true);
	Zoom("�G����", 600, 2500, 3000, null, false);

	Wait(16);

	CreateSE("SE02","se�[��_�h��_������01L");
	MusicStart("SE02",0,800,0,800,null,true);
	Fade("�G�F��", 0, 1000, null, true);
	Delete("�G����");
	Wait(30);
	Fade("�G�F��", 70, 0, null, true);

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0040]
The bundle grows larger and larger and continues to creep 
up my body&.


</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

	Fw("fw���t_�ʏ�_pinch");
//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0041]
//�y���t�z
<voice name="���t" class="���t" src="voice/dm13/9000050a01">
"Wha-What is this!?"


</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
	TextBoxDelete(0);

	CreateSE("SE21","se�l��_����_��������01");
	CreateColorSP("�G�F��", 18000, "FFFFFF");
	MusicStart("SE21",0,1100,0,1500,null,false);
	Fade("�G�F��", 0, 1000, null, true);
	Wait(30);
	FadeDelete("�G�F��", 70, null, true);

	SetFrequency("SE01", 3000, 300, null);
	SetFrequency("SE02", 3000, 200, null);
	SetVolumeEX("SE01", 1000, 300, null);
	SetVolumeEX("SE02", 1000, 300, null);

	CreateSE("SE11","se�l��_����_����02");
	MusicStart("SE11",0,700,0,1200,null,false);
	MoveCamera("�b", 2000, @0, @0, 7000, DxlAuto, true);
	SetVolumeEX("SE11", 300, 0, null);

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0042]
I tear off the hair around my leg in a panic then bolt out of the room&.

&.&.&.The gloom in the room must've been from that hair&, but 
now that I think about it&, that hair sort of resembled 
Koujaku's tattoo&.

{
	SetFrequency("SE01", 3000, 1000, null);
	SetFrequency("SE02", 3000, 1500, null);
	SetVolumeEX("SE01", 3000, 700, null);
	SetVolumeEX("SE02", 3000, 700, null);
}
I can hear the sound of it slithering after me&.

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

	CreateVOICE("�g��","dm13/9000070a02");
	MusicStart("�g��",0,700,0,1000,null,false);

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0045]
//�y�g����z
<voice name="�g����" class="�g����" src="voice/dm13/9000060e03">
"Uck&, unrghhh&.&.&.&.&.&.ughh&.&.&.&.uuunh&.&.&."


</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

/*
//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0046]
//���r�d����
//�y�g���z
<voice name="�g��" class="�g��" src="voice/dm13/9000070a02">
"Uuughhhn&.&.&.&.Guhhhhnh&.&.&.Uhn&.&.&."

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);
*/

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0050]
&.&.&.!

I can hear both the sound of Koujaku and the woman weeping&. 

{
	SetVolumeEX("�g��", 300, 0, null);
}
Where?

There's another sliding door&.
Is Koujaku over there?


</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

	Fw("fw���t_�ʏ�_rage");
//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0060]
//�y���t�z
<voice name="���t" class="���t" src="voice/dm13/9000080a01">
"Shit!"


</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
	TextBoxDelete(0);

	SetVolumeEX("SE01", 3000, 0, null);
	SetVolumeEX("SE02", 3000, 0, null);

	CreateSE("SE11","se�l��_����_����02");
	MusicStart("SE11",0,700,0,1200,null,false);
	MoveCamera("�b", 2000, @0, @0, 12250, DxlAuto, true);
	SetVolumeEX("SE11", 300, 0, null);

	Wait(500);

//�����t�@�C��["dm1400.nss"]

}
