//<continuation number="100">
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


scene dm1360.nss_MAIN
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
	
	#bg304072_5_���]�^���[�G���x�[�^�[=true;
	#bg304112_5_���]�^���[���z�[�����O=true;

	//�����[�g�t���O�A�I�����A����GameName
	$PreGameName = $GameName;
	$GameName = "dm1370.nss";

}


scene dm1360.nss
{

	//���V�[���̓��ɕK���L�q
	$�X�N���v�g�o�[�W���� = " $Revision:  $";
	$�\���� = ModuleFileName();
	$�\���� = $SYSTEM_present_process;
	SystemInit();


//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\

/*
	CreateColorSP("�G�F�����n", 0, "CC0000");

	CreateTextureSP("ElevatorPaul", 500, Center, -600, "cg/bg/x/bg304072_5_���]�^���[�G���x�[�^�[_�O��|�[��.png");

	ElevatorPole();

	CreateTextureEX("�G�w�i�b", 100, 0, 0, "cg/bg/x/bg304072_5_���]�^���[�G���x�[�^�[_�O��a.jpg");
	$YScrollSkyScale=(ImageVertical("�G�w�i�b"))*-1+1152;
	Move("�G�w�i�b", 0, @0, $YScrollSkyScale, null, true);

	CreateTextureEX("�G�w�i��", 110, 0, 0, "cg/bg/x/bg304072_5_���]�^���[�G���x�[�^�[_�O��a.jpg");
	$YScrollSkyScale2=(ImageVertical("�G�w�i��"))*-1+1152;
	Move("�G�w�i��", 0, @0, $YScrollSkyScale2, null, true);

	WaitKey();

	ElevatorMove();

	while(1)
	{
	Wait(1000);
	}

	WaitKey();

	ElevatorMoveStop(3000,30,DxlAuto);

	SetFont("�l�r ����", 18, FFFFFF, 000000, MEDIUM, RIGHTDOWN);
	CreateText("Dt1", 15000, 50, 20, 700, 500, $ElevatorMoveStopYIn);

	WaitKey();
*/

	SoundPlay("@dm009",0,450,true);

	PrintBG("��w�i", 30000);

	CreateColorSP("�G�F��", 5000, "000000");
	OnBG(10,"bg304072_5_���]�^���[�G���x�[�^�[");
	FadeBG(0,true);

	SetVolumeEX("@dm*", 1000, 0, null);
	Delete("��w�i");

	FadeDelete("�G�F��", 500, null, true);

	St("C",740, @0,@0,"st�g��_�ʏ�_think2");
	FadeSt("C",200,true);

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0010]
//�y�g���z
<voice name="�g��" class="�g��" src="voice/dm13/6000010a02">
"Whew&. That was a close one&."

{
	FwPro("fw���t_�ʏ�_sigh3",1850,"fw���t_�ʏ�_normal2");
}

//�y���t�z
<voice name="���t" class="���t" src="voice/dm13/6000020a01">
"You barely made it&. The top floor&, right?"

{	St("C",740, @0,@0,"st�g��_�ʏ�_normal2");
	FadeSt("C",200,true);}
//�y�g���z
<voice name="�g��" class="�g��" src="voice/dm13/6000030a02">
"Yeah&."


</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);
	Wait(16);

	CreateTextureEX("bg_el2", 10000, -1000, middle, "cg/bg/l/bg304072_5_���]�^���[�G���x�[�^�[_l.jpg");
	Fade("bg_el2", 500, 1000, null, true);

	CreateSE("SE01","se����_�R�C��_���쉹01");
	MusicStart("SE01",0,700,0,1000,null,false);

	DeleteSt("C", 0,true);


	CreateTextureSP("bg_el", 10, -580, 165, "cg/bg/bg304072_5_���]�^���[�G���x�[�^�[.jpg");
	Request("bg_el", Smoothing);
	Rotate("bg_el", 0, @0, 180, @0, null,true);
	Zoom("bg_el", 0, 2500, 2500, null, true);

	CreateTextureSP("ElevatorPaul", 500, Center, -600, "cg/bg/x/bg304072_5_���]�^���[�G���x�[�^�[_�O��|�[��.png");
	Request("ElevatorPaul", Smoothing);
	Zoom("ElevatorPaul", 0, 6000, 6000, null, true);

	CreateTextureSP("bg_scrool", 100, 0, -4700, "cg/bg/bg304072_5_���]�^���[�G���x�[�^�[_�O��a.jpg");
	Fade("ElevatorPaul", 0, 500, null, true);
	Fade("bg_scrool", 0, 700, null, true);

	ElevatorPole();
	ElevatorMove();

	Fade("bg_scrool", 700000, 300, null, false);
	Move("bg_scrool", 700000, @0, 0, Dxl1, false);

	CreateSE("SE11","se����_�G���x�[�^_�쓮01L");
	MusicStart("SE11",1000,700,0,1000,null,true);

	Wait(500);

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0018]
I press the button labeled for the highest floor and the 
elevator starts to move&.


</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
	TextBoxDelete(0);

	Wait(500);

	Move("bg_el2", 1000, @150, @0, AxlDxl, false);
	FadeDelete("bg_el2", 1000, Axl2, true);

	Wait(500);

	Fw("fw���t_�ʏ�_worry3");
//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0019]
//�y���t�z
<voice name="���t" class="���t" src="voice/dm13/6000040a01">
"&.&.&.Hey&. I was just thinking&."

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

//	St("C",740, @0,@0,"st�g��_�ʏ�_cool");
//	FadeSt("C",200,true);

	Fw("fw�g��_�ʏ�_cool");

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0020]
//�y�g���z
<voice name="�g��" class="�g��" src="voice/dm13/6000050a02">
"Hm?"

{	Fw("fw���t_�ʏ�_worry4");}
//�y���t�z
<voice name="���t" class="���t" src="voice/dm13/6000060a01">
"Why did your team members say to go to the top floor? Is
 that where Toue is? Or maybe Ryuuhou?"

{	Fw("fw�g��_�ʏ�_cool2");}
//	St("C",740, @0,@0,"st�g��_�ʏ�_cool2");
//	FadeSt("C",200,true);
//�y�g���z
<voice name="�g��" class="�g��" src="voice/dm13/6000070a02">
"&.&.&.Couldn't it be either of them? I thought you looked
 into it&."

{	Fw("fw���t_�ʏ�_think");}
//�y���t�z
<voice name="���t" class="���t" src="voice/dm13/6000080a01">
"I guess so&.&.&."

{	Fw("fw�g��_�ʏ�_think");}
//	St("C",740, @0,@0,"st�g��_�ʏ�_think");
//	FadeSt("C",200,true);
//�y�g���z
<voice name="�g��" class="�g��" src="voice/dm13/6000090a02">
"&.&.&.&.&."

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

//	DeleteAllSt(200,true);

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0030]
Koujaku goes silent&, another troubled expression on his 
face&.

I know it's wrong to doubt Beni-Shigure members&, but it 
worries me&.

Why did they say to go to the top floor&.&.&.?

Well&.&.&. I guess important people are almost always on the 
top floor&, so it might've been that&.

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\

	TextBoxDelete(0);
	Wait(1000);
	SetFrequency("SE11", 2800, 500, null);
	SetVolumeEX("SE11", 3000, 0, null);
	CreateColorEX("�G�F��", 5000, "000000");
	Fade("�G�F��", 1000, 1000, null, true);

	Wait(1500);

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0033]
After reaching the top floor&, the elevator lowers slightly and eventually opens&.


</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

	CreateSE("SE01","se����_�G���x�[�^_�d�q��01");
	MusicStart("SE01",0,700,0,1000,null,false);

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0034a]
When the doors open&, I tense up&, preparing myself for the 
police that might be outside&.


</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
	TextBoxDelete(0);

	ElevatorPoleStop();
	Delete("ElevatorPaul");
	Delete("bg_el");
	Delete("bg_scrool");
	Delete("chara01");

//���r�d�F�G���x�[�^�[�̃h�A���Â��ɊJ��
	CreateSE("SE01","se����_�h�A���]����_���J��01");
	MusicStart("SE01",0,700,0,1000,null,false);

	OnBG(10,"bg304033_5_���]�^���[�L��03");
	FadeBG(0,true);

	DrawDelete("�G�F��", 500, 100, null, "slide_01_00_0", true);


//	SoundPlay("@dm018",0,450,true);

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0034b]
But the only thing outside of the door is another white 
hallway&.

I quickly look to my left and right&.
There doesn't seem to be anyone around&.

Koujaku and I step out&.

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
	TextBoxDelete(0);

	CreateSE("SE01","se�l��_����_����03");
	MusicStart("SE01",0,700,0,900,null,false);
	CreateColorSP("�G����", 25000, "BLACK");
	DrawTransition("�G����", 1000, 0, 1000, 100, null, "cg/data/blind_01_00_0.png", true);

	OnBG(10,"bg304112_5_���]�^���[���z�[�����O");
	FadeBG(0,true);

	Wait(500);

	DrawDelete("�G����", 1000, 100, null, "blind_01_00_1", true);


//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0040]
As we go down the hallway&, we come to see a huge door&.

It doesn't look like there are any other rooms&, so the 
whole floor must be dedicated to this one room&.

We walk up to it&, but then stop&.


</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

	Fw("fw�g��_�ʏ�_think");
//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0042]
//�y�g���z
<voice name="�g��" class="�g��" src="voice/dm13/6000100a02">
"&.&.&.They're late&."


</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0050]
Koujaku murmurs&.
The Beni-Shigure members&.

They said they'd be here&, but I wonder if they're okay&.

They couldn't have been arrested&.

But we can't sit here for long&.&.&.

Our uneasiness clearly evident&, we walk to the door&.


</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
	TextBoxDelete(0);

//�������u���F�������̓N�h�C�̂Ŗ������Ă��ǂ������v
//�������܂����`

	SetVolumeEX("@dm*", 1000, 0, null);
/*
	CreateSE("SE01","se����_�h�A���]����_���J��01");
	MusicStart("SE01",0,700,0,600,null,false);
	CreateColorSPadd("�G����", 5000, "FFFFFF");
	DrawTransition("�G����", 500, 0, 1000, 100, null, "cg/data/slide_06_00_1.png", true);
	Wait(500);
*/

	CreateSE("SE01","se����_�h�A���]����_���J��01");
	MusicStart("SE01",0,700,0,600,null,false);

	Wait(300);

	CreateColorSPadd("�G�F��", 5000, "FFFFFF");
	DrawTransition("�G�F��", 1000, 0, 1000, 100, null, "cg/data/slide_06_00_1.png", true);

	Wait(1500);

//�����t�@�C��["dm1370.nss"]

}
