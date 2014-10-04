//<continuation number="110">
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


scene dm1350.nss_MAIN
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

	#bg304031_5_���]�^���[�L��01=true;
	#bg304032_5_���]�^���[�L��02=true;

	//�����[�g�t���O�A�I�����A����GameName
	$PreGameName = $GameName;
	$GameName = "dm1360.nss";

}


scene dm1350.nss
{

	//���V�[���̓��ɕK���L�q
	$�X�N���v�g�o�[�W���� = " $Revision:  $";
	$�\���� = ModuleFileName();
	$�\���� = $SYSTEM_present_process;
	SystemInit();


//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\

	SoundPlay("@dm018",0,450,true);

	PrintBG("��w�i", 30000);

	CreateColorSP("�G�F��", 5000, "000000");
	OnBG(10,"bg304031_5_���]�^���[�L��01");
	FadeBG(0,true);

	CreateColorSPadd("�G�F��", 4000, "WHITE");
	CreateTextureSP("�G�w�i", 100, Center, 0, "cg/bg/l/bg304031_5_���]�^���[�L��01_l.jpg");

	Move("�G�w�i", 0, @-500, @0, AxlDxl, true);

	Wait(500);

	Delete("��w�i");
	FadeDelete("�G�F��", 1000, null, true);
	FadeDelete("�G�F��", 2500, null, false);
	Wait(500);
	Move("�G�w�i", 3500, @0, @-400, AxlDxl, true);
	Wait(700);
	FadeDelete("�G�w�i", 1000, null, true);

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0010]
Through the door we find a long&, white hallway&.

So this is Oval Tower&.&.&.

I heard there were areas where regular people could go in 
the tower&, but I see no one from the back door&.

But I can hear the faint sounds of footsteps; they must 
belong to the security officers on patrol&.

We examine our surroundings and carefully make our way 
down the hallway&.

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

	Fw("fw���t_�ʏ�_angry");
//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0012]
//�y���t�z
<voice name="���t" class="���t" src="voice/dm13/5000010a01">
"&.&.&.It doesn't feel right&."

{	St("C",740, @0,@0,"st�g��_�ʏ�_cool2");
	FadeSt("C",200,true);}
//�y�g���z
<voice name="�g��" class="�g��" src="voice/dm13/5000020a02">
"Yeah&. It's too quiet&, and an alarm hasn't gone off or
 anything&."

{	Fw("fw���t_�ʏ�_angry");}
//�y���t�z
<voice name="���t" class="���t" src="voice/dm13/5000030a01">
"&.&.&.&.&."


</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

	DeleteFw();
	DeleteAllSt(200,true);

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0016]
Without even opening our mouths&, we both ask each other 
the same question&.

The side door opened so easily&.&.&.
Maybe it's a trap?

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
	TextBoxDelete(0);

	CreateSE("SE01","se�l��_����_����03");
	MusicStart("SE01",0,700,0,1000,null,false);
	CreateColorSP("�G����", 25000, "BLACK");
	DrawTransition("�G����", 1000, 0, 1000, 100, null, "cg/data/blind_01_00_0.png", true);

	OnBG(10,"bg304032_5_���]�^���[�L��02");
	FadeBG(0,true);

	DrawDelete("�G����", 1000, 100, null, "blind_01_00_1", true);

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0020]
We continue with caution and eventually see an elevator&.


</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
	TextBoxDelete(0);

//�������u���o�F�e�ɉB��镗�Ɂv
	CreateColorSP("�G����", 16000, "BLACK");
	DrawTransition("�G����", 300, 0, 1000, 100, Dxl1, "cg/data/slide_01_01_0.png", true);

	CreateTextureSP("�G�w�i", 100, -50, -250, "cg/bg/l/bg304032_5_���]�^���[�L��02_l.jpg");


	CreateSE("SE01","se�퓬_����_����01a");
	MusicStart("SE01",0,700,0,1000,null,false);
	Move("�G�w�i", 300, @50, @0, Dxl1, false);
	DrawDelete("�G����", 300, 100, Dxl1, "slide_01_01_1", true);



//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0021]
There are two security guards standing by the elevator&. We hide behind a wall before they can notice us&.

&.&.&.But&.


</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

	SetVolumeEX("@dm*", 1000, 0, null);

{	Fw("fwm�x��A_�ʏ�_normal");}
//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0022]
//�y�x���`�z
<voice name="�x���`" class="�x���`" src="voice/dm13/5000040e16">
"Hey&, what are you doing over there?"

{	Fw("fw���t_�ʏ�_shock2");}
//�y���t�z
<voice name="���t" class="���t" src="voice/dm13/5000050a01">
"!"

{	Fw("fw�g��_�ʏ�_worry2");}
//�y�g���z
<voice name="�g��" class="�g��" src="voice/dm13/5000060a02">
"&.&.&.This is bad&."


</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
	TextBoxDelete(0);

	Fade("�G�w�i", 500, 0, null, true);
	CreateSE("SE01","se�l��_����_����04");
	MusicStart("SE01",0,700,0,1000,null,false);

	Wait(2000);
	Fade("�G�w�i", 500, 1000, null, true);

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0027]
&.&.&.It seems we were a little too slow&.
Footsteps approach us from the direction of the elevator&.

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

	SetVolumeEX("SE*", 1000, 0, null);
	CreatePlainSP("�G��", 5000);

	CreateMaskSP("�G��", 2000, 0, 0, "cg/mask/ci���C��_01_00.png", false);
	CreateMaskSetSP("�G��", 4000, 0, 0, "ci���C��_01_00", true, "ci���C��_01_00z");
	CreateTextureSP("�G���g", 4000, Center, Middle, "cg/mask/ci���C��_01_00z.png");
	CreateTextureSP("�G��/�G��", 500, 0, -250, "cg/bg/m/bg304032_5_���]�^���[�L��02_m.jpg");
	CreateColorSP("�G��/�G����", 600, "BLACK");
	CreateTextureSP("�G��/�G����", 700, Center, InBottom, "cg/fu/fu�g��_�ʏ�_cool.png");
	SetShade("�G��/�G��", MEDIUM);

	Move("�G��/�G����", 0, @15, @0, null, true);
	Move("�G��/�G��", 0, @30, @0, null, true);

	Fade("�G��/�G����", 0, 300, null, true);

	Move("�G��/�G����", 800, @-15, @0, Dxl1, false);
	Move("�G��/�G��", 800, @-30, @0, Dxl1, false);
	DrawDelete("�G��", 300, 100, Dxl1, "slide_05_01_0", true);

//	Wait(1000);

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0029]
Koujaku and I exchange glances and nod&, knowing we're 
thinking the same thing&.

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
	TextBoxDelete(0);


	CreateTextureSP("�G�w�i��", 4001, 0, -250, "cg/bg/l/bg304032_5_���]�^���[�L��02_l.jpg");

	CreateSE("SE01","se�퓬_����_����01a");
	MusicStart("SE01",0,700,0,1000,null,false);
	Move("�G��/�G����", 650, @-300, @0, Dxl3, false);
	Move("�G��/�G��", 650, 0, @0, Dxl3, false);
	DrawTransition("�G�w�i��", 150, 0, 1000, 100, Dxl3, "cg/data/slide_01_01_0.png", true);

	DeleteAllSt(0,true);
	Delete("�G��*");
	Delete("�G��/�G*");

	CreateSE("SE01","se�퓬_����_������01");
	MusicStart("SE01",0,700,0,1000,null,false);
	CreateColorSP("�G����", 16000, "BLACK");
	DrawTransition("�G����", 200, 0, 1000, 100, Dxl3, "cg/data/zoom_01_00_0.png", true);

	Delete("�G�w�i*");
	CreatePlainEX("�G��", 1000);
	Request("�G��", Smoothing);
	Zoom("�G��", 0, 1200, 1200, null, true);
	Fade("�G��", 0, 500, null, true);


	Zoom("�G��", 250, 1000, 1000, Axl1, false);
	FadeDelete("�G��", 250, Axl1, false);
	CreateSE("SE12","se�l��_����_����03");
	MusicStart("SE12",0,700,0,1300,null,false);
	DrawDelete("�G����", 150, 100, Dxl3, "zoom_01_00_0", true);



	SoundPlay("@dm009",0,450,true);

	Wait(200);
	CreateSE("SE13","se�l��_����_����03");
	MusicStart("SE13",0,700,0,1300,null,false);

//	St("C",740, @0,@0,"st�g��_�ʏ�_normal");
//	FadeSt("C",200,true);
//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0030]
Koujaku runs out into the hallway first&, and I follow suit&.


</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

	Fw("fwm�x��B_�ʏ�_normal");
//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0031]
//�y�x���a�z
<voice name="�x���a" class="�x���a" src="voice/dm13/5000070e17">
"You two&, who are&.&.&. Whoagh!"


</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
	TextBoxDelete(0);


	CreatePlainSP("�G��", 5000);

	CreateMaskSetSP("�G��", 2000, 0, 0, "ci�X���b�V��_02_00", true, "ci�X���b�V��_02_00z");
	CreateTextureSP("�G��/�G���w�i", 1010, Center, Middle, "cg/bg/l/bg304032_5_���]�^���[�L��02_l.jpg");
	CreateTextureSP("�G��/�G�����G", 1030, 0, 0, "cg/st/l/st�g��_�퓬�f��_normal2_l.png");

	SetShade("�G��/�G���w�i", MEDIUM);


	CreateSE("SE01","se�퓬_����_����01");
	MusicStart("SE01",0,700,0,1000,null,false);
	Move("�G��/�G�����G", 250, 285, -90, Axl3, false);
	Move("�G��/�G���w�i", 250, @70, @-28, Axl3, false);
	Wait(50);
	DrawDelete("�G��", 150, 100, null, "slide_04_01_0", true);
	Wait(200);


	CreateSE("SE01","se�퓬_�Ō�_�q�b�g��01");
	MusicStart("SE01",0,700,0,1000,null,false);
	CreateColorEXadd("�G�F��", 4000, "FFFFFF");
	Fade("�G�F��", 100, 1000, Dxl3, true);
	Wait(30);
	Delete("�G��*");
	Delete("�G��/�G*");

	DeleteAllSt(0,true);

	BGPlainShake(50,200,5,5,0,0,1000,Dxl1,false);
	FadeDelete("�G�F��", 100, Dxl3, true);

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0032]
Koujaku knocks one of the guards off his feet&.

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
	TextBoxDelete(0);

	CreateSE("SE01","se�퓬_�Ō�_���؂荂01");
	MusicStart("SE01",0,700,0,1000,null,false);
	CreateTextureSP("�G���o��", 1000, 0, Middle, "cg/ev/l/ev900���t�R��ėp_l.jpg");
	CreateTextureSP("�G���o���", 900, Center, Middle, "cg/ev/ev900���t�R��ėp.jpg");
	Wait(50);
	Move("�G���o��", 300, -1024, 0, Dxl3, false);
	FadeDelete("�G���o��", 200, null, true);

	Wait(200);
	CreateSE("SE01","se�퓬_�Ō�_�q�b�g��02");
	MusicStart("SE01",0,700,0,1000,null,false);
	CreateColorEXadd("�G�F��", 4000, "FFFFFF");
	Fade("�G�F��", 100, 1000, Dxl3, true);
	Delete("�G��*");
	Wait(30);
	BGPlainShake(50,200,10,10,0,0,1000,Dxl1,false);
	FadeDelete("�G�F��", 100, Dxl3, true);

	Wait(500);

	CreateSE("SE01","se�퓬_����_����01");
	MusicStart("SE01",0,700,0,1000,null,false);

	CreateColorSP("�G����", 16000, "BLACK");
	DrawTransition("�G����", 150, 0, 1000, 100, Dxl3, "cg/data/slide_01_03_1.png", true);


	CreateTextureSP("�G�w�i", 100, -700, -480, "cg/bg/l/bg304031_5_���]�^���[�L��01_l.jpg");

	Move("�G�w�i", 250, @-190, @0, Axl3, false);
	DrawDelete("�G����", 250, 100, Dxl3, "slide_01_03_0", true);
	Wait(100);

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0033]
I kick the other guard from the side and dash towards the 
elevator&.

I stretch out my arms&, reach for the elevator panel&, and 
push a button&.


</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

	Fw("fwm�x��A_�ʏ�_normal");
//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0034]
//�y�x���`�z
<voice name="�x���`" class="�x���`" src="voice/dm13/5000080e16">
"Wai&.&.&.!"

{	DeleteFw();
	CreateSE("SE01","se�퓬_�Ō�_�q�b�g��01");
	MusicStart("SE01",0,700,0,900,null,false);
	CreateColorEXadd("�G�F��", 4000, "FFFFFF");
	Fade("�G�F��", 100, 1000, Dxl3, true);
	Wait(10);
	FadeDelete("�G�F��", 100, Dxl3, true);
	Wait(300);
	CreateSE("SE01","se�l��_�Ռ�_�]�|02");
	MusicStart("SE01",0,700,0,900,null,false);
	Wait(300);

	St("C",740, @0,@0,"st�g��_�퓬�f��_normal2");
	FadeSt("C",200,true);
}
//�y�g���z
<voice name="�g��" class="�g��" src="voice/dm13/5000090a02">
"Have a nice nap!"

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0040]
Koujaku gives a chop to the guard's neck&.

{
	CreateSE("SE01","se�퓬_�Ō�_���؂��01");
	MusicStart("SE01",0,700,0,800,null,false);

	DeleteAllSt(200,true);
}
He then grabs the sword from his back and hits the other 
guard in the gut with the scabbard&.

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

	CreateSE("SE01","se�퓬_�Ō�_�q�b�g��02");
	MusicStart("SE01",0,700,0,1000,null,false);

	CreateColorEXadd("�G�F��", 4000, "FFFFFF");
	Fade("�G�F��", 100, 1000, Dxl3, true);
	Wait(10);
	FadeDelete("�G�F��", 100, Dxl3, true);

	Fw("fwm�x��B_�ʏ�_normal");
//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0042]
//�y�x���a�z
<voice name="�x���a" class="�x���a" src="voice/dm13/5000100e17">
"Ugh!"

{	Fw("fw���t_�ʏ�_shout");}
//�y���t�z
<voice name="���t" class="���t" src="voice/dm13/5000110a01">
"Koujaku!"


</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

	CreateSE("SE01","se����_�G���x�[�^_�d�q��01");
	MusicStart("SE01",0,700,0,1000,null,false);

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0045]
The eleveator is already here&.

I go inside while yelling for Koujaku&, then quickly press 
the close button&.


</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
	TextBoxDelete(0);

	CreatePlainSP("�G��", 5000);
	CreatePlainSP("�h�p", 3000);

	Request("�h�p", Smoothing);
	Zoom("�h�p", 0, 1300, 1300, null, true);

	CreateMovieEX("�G����", 3001, 286, 50, true, true, "dx/mv0003�W����01_��.ngs");
	Zoom("�G����",0,3000,3000,null,true);

	MoveFFP1("@�h�p",500);
	Fade("�G����", 0, 1000, null, true);

	CreateSE("SE01","se�퓬_����_����01");
	MusicStart("SE01",0,700,0,1200,null,false);
	FadeDelete("�G��", 300, Dxl2, true);
	Wait(300);

	CreateSE("SE02","se����_�h�A���]����_���J��01");
	MusicStart("SE02",0,700,0,1000,null,false);
	CreateColorSP("�G����", 5000, "000000");
	DrawTransition("�G����", 500, 0, 1000, 100, Dxl1, "cg/data/slide_01_00_0.png", false);
	Wait(200);
	CreateSE("SE01","se�l��_����_�ߎC��02");
	MusicStart("SE01",0,1000,0,1000,null,false);
	Wait(200);

	Delete("�h*");
	Delete("�G����*");

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0050]
Koujaku slips in through the gap just before it closes&.

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
	TextBoxDelete(0);

	Wait(500);

//�����t�@�C��["dm1360.nss"]

}
