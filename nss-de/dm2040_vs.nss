//<continuation number="90">
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


scene dm2040_vs.nss_MAIN
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

	#ev920�m�C�Y�ːi = true;


	//�����[�g�t���O�A�I�����A����GameName
	$PreGameName = $GameName;
	$GameName = "dm2050.nss";

}


scene dm2040_vs.nss
{

	//���V�[���̓��ɕK���L�q
	$�X�N���v�g�o�[�W���� = " $Revision:  $";
	$�\���� = ModuleFileName();
	$�\���� = $SYSTEM_present_process;
	SystemInit();


//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\

	SoundPlay("@dm006",0,450,true);

	PrintBG("��w�i", 30000);

	OnBG(10,"bg101022_5_���Z����ʂ藠�H�n02");
	FadeBG(0,true);

	FadeDelete("��w�i", 0, null, true);

	CreateSE("SE11","se�l��_����_����01");//�������u�r�d�Fse�l��_����_����01L�v
	MusicStart("SE11",1000,400,0,600,null,false);

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0010]
&.&.&.Suddenly&, I hear footsteps approaching&.

{	SetVolumeEX("SE*", 1500, 0, null);}
Did the cops find us?


</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

	CreateSE("SE01","se�l��_����_�͂�01");
	MusicStart("SE01",0,500,0,1100,null,false);

	CreatePlainSP("�G��", 990);
	Shake("�G��", 150, 0, 5, 0, 0, 500, null, true);
	Delete("�G��");

	Fw("fw���t_�ʏ�_shock2");
//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0011]
//�y���t�z
<voice name="���t" class="���t" src="voice/dm20/4000010a01">
"&.&.&.Ngh&."

{
	St("C",740, @0,@0,"bu�m�C�Y_�ʏ�_normal2");
	FadeSt("C",200,true);
}
//�y�m�C�Y�z
<voice name="�m�C�Y" class="�m�C�Y" src="voice/dm20/4000020a03">
"This way&."


</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
	TextBoxDelete(0);

	DeleteAllSt(200,true);

	SetVolumeEX("@dm*", 3000, 0, null);
	SetVolumeEX("SE*", 1000, 0, null);

	CreateColorSP("�G����", 5000, "000000");
	DrawTransition("�G����", 250, 0, 1000, 100, null, "cg/data/slide_01_01_0.png", true);

	OnBG(10,"bg101051_5_���Z����ʂ藠�H�n06");
	FadeBG(0,true);

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0013]
Pulling my arm&, Noiz begins to run and soon turns at a 
corner&.

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
	TextBoxDelete(0);

	SoundPlay("@dm008",0,450,true);

	CreateTextureSP("�G�w�i100", 1000, 0, -70, "cg/bg/bg101051_5_���Z����ʂ藠�H�n06.jpg");
	Zoom("�G�w�i100", 0, 1500, 1500, null, true);
	SetShade("�G�w�i100", MEDIUM);

	CreateTextureSP("�G�w�i200", 1100, Center, InBottom, "cg/fu/fu����_�ʏ�_shout.png");
	Move("�G�w�i200", 0, 200, @0, null, true);

	CreateSE("SE01","se�l��_����_���n01");
	MusicStart("SE01",0,700,0,1000,null,false);

	Move("�G�w�i200", 300, 60, @0, Dxl1, false);
	DrawDelete("�G����", 250, 100, null, "slide_01_01_1", true);

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0014]
//�y�����z
<voice name="����" class="����" src="voice/dm20/4000030b08">
"Ooooooops&, this is it for you&, Mr&. and Mrs&. Terrorist!!"

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

	Fw("fw���t_�ʏ�_rage");
//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0020]
//�y���t�z
<voice name="���t" class="���t" src="voice/dm20/4000040a01">
"!"

{	Fw("fw�m�C�Y_�ʏ�_pinch");}
//�y�m�C�Y�z
<voice name="�m�C�Y" class="�m�C�Y" src="voice/dm20/4000050a03">
"Tch&."

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

	CreatePlainSP("�G��", 5000);

	Delete("�G�w�i100");
	Delete("�G�w�i200");

	St("C",740, @0,@0,"st����_�ʏ�_pride");
	FadeSt("C",0,true);

	FadeDelete("�G��",300,null,true);

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0021]
//�y�����z
<voice name="����" class="����" src="voice/dm20/4000060b08">
"I fiiiiiinally found you! I'm not letting you get away
 this time! Surrender quietly! HAAAHAHAHAAA!!!!"

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

//�������u���F�����̓X���C�h�n�̉��o�ŃX�s�[�h�����v
//���F�኱�����Ȋԍ����Ȃ̂ŁA���o�ӏ�����s�ύX���܂��B

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0022]
Akushima&.&.&.!

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
	TextBoxDelete(0);

	CreateSE("SE01","se�퓬_����_����01");//�������u�r�d�Fse�퓬_����_����01�v

	CreateTextureEX("�G�d�u", 1100, -361, -268, "cg/ev/ev920�m�C�Y�ːi.jpg");
	Request("�G�d�u", Smoothing);
	Zoom("�G�d�u", 0, 2000, 2000, null, true);
	SetBlur("�G�d�u", true, 2, 200, 30, false);

	MusicStart("SE01",0,700,0,1000,null,false);
	Fade("�G�d�u", 0, 1000, null, false);
	Move("�G�d�u", 200, 0, 0, Dxl1, false);
	Zoom("�G�d�u", 200, 1000, 1000, null, true);

	DeleteAllSt(0,true);

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0024]
Fear fills my thoughts&, but Noiz suddenly takes off 
towards him&.


</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

	Fw("fw���t_�ʏ�_rage");
//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0025]
//�y���t�z
<voice name="���t" class="���t" src="voice/dm20/4000070a01">
"Hey!?"

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
	TextBoxDelete(0);

//���m�C�Y�A�΂������ƈ������v���؂艣��
	CreateSE("SE01","se�퓬_�Ō�_�q�b�g��02");//�������u�r�d�Fse�퓬_�Ō�_�q�b�g��01�v
	MusicStart("SE01",0,700,0,1000,null,false);
	CreateColorSP("�G�F��", 4000, "FFFFFF");

	Wait(30);

	Delete("�G�d�u");
	FadeDelete("�G�F��", 300, null, true);

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0030]
//�y�����z
<voice name="����" class="����" src="voice/dm20/4000080b08">
"Fuaagh!?"


</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

	CreateSE("SE01","se�l��_�Ռ�_�]�|01");//�������u�r�d�Fse�l��_�Ռ�_�]�|01�v
	MusicStart("SE01",0,700,0,1000,null,false);

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0031]
With an incredible thump&, Akushima landed on his back&.

Noiz delivers a very much deserved knuckle sandwich to 
Akushima&.

Akushima&, seemingly unconscious on his feet&, begins to 
spurt blood from his nose&.

I think his nose is broken&.&.&.

And he was hit so suddenly&.&.&.
How strong do you have to be to be able to do that to 
someone?

I look at Noiz and see his rough knuckles&.

He's not only dangerous in Rhyme&, he's also scary in real 
hand to hand combat&.&.&.


</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

{	St("C",740, @0,@0,"st�m�C�Y_�ʏ�_angry");
	FadeSt("C",200,true);}
//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0036]
//�y�m�C�Y�z
<voice name="�m�C�Y" class="�m�C�Y" src="voice/dm20/4000090a03">
"Hey&, let's go!"


</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

	DeleteAllSt(200,true);

	CreateSE("SE01","se�l��_����_����01");//�������u�r�d�Fse�l��_����_����01�v
	MusicStart("SE01",0,700,0,1000,null,false);

	CreateSE("SE02","se�l��_����_����01");
	MusicStart("SE02",0,700,0,800,null,false);

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0037]
Noiz grabs my hand and takes off again&.

His grip returning me to reality&, I run to catch up with 
him&.

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
	TextBoxDelete(0);

	SetVolumeEX("@dm*", 3000, 0, null);
	SetVolumeEX("SE01", 2000, 0, null);

//����ʓ]�������Z����Ƃo�i�����ԒʘH
//	CreateColorEX("�G�F��", 5000, "000000");
//	Fade("�G�F��", 1500, 1000, null, true);

	CreateColorSP("�G����", 5000, "BLACK");
	DrawTransition("�G����", 500, 0, 1000, 100, null, "cg/data/blind_01_00_0.png", true);

	Wait(500);

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0040]
We somehow escape from the police and continue towards the area where we're supposed to meet with Haga-san&.

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
	TextBoxDelete(0);

	Wait(500);

//�����t�@�C��["dm2050.nss"]

}
