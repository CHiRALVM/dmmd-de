//<continuation number="200">
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


scene dm1380.nss_MAIN
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

	//�����o������������
	TiesMovieDelete();

	//�����[�g�t���O�A�I�����A����GameName
	$PreGameName = $GameName;
	$GameName = "dm1390.nss";

	//�����Ƀ��x���ݒ�
	$HALevel=3;

}


scene dm1380.nss
{

	//���V�[���̓��ɕK���L�q
	$�X�N���v�g�o�[�W���� = " $Revision:  $";
	$�\���� = ModuleFileName();
	$�\���� = $SYSTEM_present_process;
	SystemInit();


//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\

	PrintBG("��w�i", 30000);

	OnBG(10,"bg304091_5_���]�^���[���z�[��");
	FadeBG(0,true);

	FadeDelete("��w�i", 0, null, true);

	Fw("fw���t_�ʏ�_hard");
//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0010]
//�y���t�z
<voice name="���t" class="���t" src="voice/dm13/8000010a01">
"&.&.&.&.&."


</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0011]
&.&.&.I wasn't able to stop him&.

Nothing can come out of hatred&.

Weren't you one of the best people to know that?

Even so&.&.&.


</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

{	Fw("fw���t_�ʏ�_pain2");}
//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0014]
//�y���t�z
<voice name="���t" class="���t" src="voice/dm13/8000020a01">
"Why did you do that&, Koujaku&.&.&.!"

{
//���r�d�F�ǂ��ǂ����ƍg���̒��Ԃ��������X�|���
	CreateSE("SE01","se�l��_�Ռ�_�]�|02����");
	MusicStart("SE01",0,700,0,1000,null,false);
}

{	Fw("fw���t_�ʏ�_shock2");}
//�y���t�z
<voice name="���t" class="���t" src="voice/dm13/8000030a01">
"!?"

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

	DeleteFw();
	CreateTextureEX("�G�w�i100", 100, Center, Middle, "cg/bg/bg304102_5_���]�^���[���z�[���A���O����.jpg");
	Fade("�G�w�i100", 500, 1000, null, true);

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0020]
Suddenly&, the members holding me down collapse&.

When I look around&, I see that the rest of the 
Beni-Shigure members have done the same&.

I lean over them&, and put a finger to one of their napes&.

&.&.&.He has a pulse&. They just look faint&.

{	FadeDelete("�G�w�i100", 500, null, true);}
But what's the meaning of this?

It's like they're dolls whose strings were just cut off&.

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

{	Fw("fw���t_�ʏ�_hard2");}
//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0027]
//�y���t�z
<voice name="���t" class="���t" src="voice/dm13/8000040a01">
"&.&.&.!?"


</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
	TextBoxDelete(0);

	CreateSE("SE01","se�l��_�S��_�ۓ�01");
	MusicStart("SE01",0,700,0,1000,null,false);

	CreatePlainEX("�G��", 3900);
	SetShade("�G��", HEAVY);


	CreateColorEX("�G�F��", 4000, "000000");
	Fade("�G��", 300, 1000, null, false);
	Fade("�G�F��", 300, 500, null, true);
	Wait(100);
	Fade("�G��", 150, 0, null, false);
	Fade("�G�F��", 150, 0, null, true);

	Wait(50);

	Fade("�G��", 300, 1000, null, false);
	Fade("�G�F��", 300, 500, null, true);
	Wait(100);
	Fade("�G��", 150, 0, null, false);
	Fade("�G�F��", 150, 0, null, true);

	Wait(500);
	Delete("�G��");

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0028]
I'm attacked by a sudden feeling of drowsiness and lose all
strength in my legs&.

I can't believe I'd be drowsy now of all times&.&.&.

I put a hand to my now blazing hot neck&, and I feel a 
place on it swelling up like a bug bite&.

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);


//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0030]
This is&.&.&. a trace from Ryuuhou's needle&. 

Everyone&, including all of those Beni-Shigure members&, were
pricked by Ryuuhou's needle&. 

&.&.&.Maybe&, since Ryuuhou died&, his influence has 
disappeared?


</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

	Fw("fw���t_�ʏ�_pain2");
//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0033]
//�y���t�z
<voice name="���t" class="���t" src="voice/dm13/8000050a01">
"&.&.&.Guh&."


</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\

	TextBoxDelete(0);

	CreateSE("SE01","se�l��_�S��_�ۓ�01");
	MusicStart("SE01",0,700,0,1000,null,false);

	CreatePlainEX("�G��", 990);
	SetShade("�G��", HEAVY);

	Fade("�G��", 1000, 1000, null, false);
	Fade("�G�F��", 300, 750, null, true);
	Wait(100);
	Fade("�G�F��", 150, 500, null, true);

	Wait(500);

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0034]
I feel so sleepy&.&.&.
I begin to lose focus&, feeling as if I'm about to fall 
down&.

But I can't let myself&.

Koujaku's still&.&.&.


</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

	Request("�G��", Disused);
	Fade("�G��", 1000, 0, null, false);
	Fade("�G�F��", 500, 0, null, true);
	Delete("�G�F��");

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0036]
I shake off the drowsiness and somehow find the strength 
to stand up&.

But then&.&.&.

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);


	TextBoxDelete(0);

	Wait(16);

	CreateTextureEX("�G�w�i", 100, Center, Middle, "cg/bg/bg304091_5_���]�^���[���z�[��.jpg");
	Request("�G�w�i", Smoothing);
	SetShade("�G�w�i", HEAVY);
	Zoom("�G�w�i", 0, 2000, 2000, null, true);


	Fade("�G�w�i", 500, 1000, null, true);

	Wait(500);

	St("C",740, @0,@50,"bu�g��_�o�[�T�N_normal");

	Move("�G�w�i", 800, @0, @-25, AxlDxl, false);

	Shake("@StNameC/C*", 800, 3, 0, 0, 0, 700, null, false);
	Move("@StNameC/C*", 800, @0, @-50, AxlDxl, false);
	FadeSt("C",500,true);

	SoundPlay("@dm007a",0,450,true);

	Wait(1000);

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0040]
I freeze at the sight before me&.

Koujaku stands there holding his blade as it drips with 
blood&, completely without a trace of his former self&.


</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

	Fw("fw���t_�ʏ�_shout2");
//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0041]
//�y���t�z
<voice name="���t" class="���t" src="voice/dm13/8000060a01">
"Koujaku&.&.&.!?"

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

	Shake("@StNameC/C*", 300, 3, 0, 0, 0, 500, null, false);

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0043]
//�y�g���z
<voice name="�g��" class="�g��" src="voice/dm13/8000070a02">
"&.&.&.&.&."

Koujaku&.&.&. won't recognize me&.


</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

	St("C",740, @0,@0,"bu�g��_�o�[�T�N_shout");
	FadeSt("C",200,true);

	CreatePlainSP("�G��", 5000);
	Fade("�G��", 0, 500, null, true);
	Shake("�G��", 500, 5, 3, 0, 0, 1000, null, false);
	FadeDelete("�G��", 300, null, false);
	Zoom("�G��", 300, 1100, 1100, null, false);


//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0044]
//�y�g���z
<voice name="�g��" class="�g��" src="voice/dm13/8000080a02">
"&.&.&.&.&.Graaahhhhhh!!"

{	Fw("fw���t_�ʏ�_shock2");}
//�y���t�z
<voice name="���t" class="���t" src="voice/dm13/8000090a01">
"!"

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\



	CreateSE("SE01","se�퓬_����_���؂荂02");
	CreateSE("SE02","se�퓬_����_����01");
	CreateSE("SE04","se�l��_����_����01");

	CreatePlainSP("�G��", 5000);

	DeleteAllSt(0,true);

	MusicStart("SE01",0,700,0,1000,null,false);
	MusicStart("SE02",0,700,0,1000,null,false);


	Move("�G��", 200, @0, @200, Axl1, false);
	Shake("�G��", 500, 5, 3, 0, 0, 1000, null, false);
	FadeDelete("�G��", 300, null, false);
	Zoom("�G��", 200, 2000, 2000, Axl1, false);



	MusicStart("SE04",0,700,0,1100,null,false);

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0050]
Koujaku swings his blade and begins to run towards me&. 

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
	TextBoxDelete(0);

	SetVolumeEX("SE04", 1000, 0, null);

	CreateTextureEX("ef01", 1000, Center, Middle, "cg/ef/efx01���M01.jpg");

	CreateSE("SE05","se�퓬_����_������01");
	CreateSE("SE03","se�l��_�Ռ�_�]�|02");

	MusicStart("SE03",0,700,0,1000,null,false);
	MusicStart("SE05",0,700,0,1000,null,false);
	Fade("ef01", 0, 1000, null, true);
	Shake("ef01", 500, 2, 10, 0, 0, 1000, null, false);
	Zoom("ef01", 500, 1600, 1600, Dxl1, false);

	CreateColorSP("�G�F��", 4000, "FFFFFF");

	Delete("�G�w�i");

	CreateTextureSP("bg01", 100, Center, Middle, "cg/bg/bg304091_5_���]�^���[���z�[��.jpg");
	Zoom("bg01", 0, 1300, 1300, null, true);
	Request("bg01", Smoothing);

	Wait(30);

	Zoom("bg01", 300, 1000, 1000, Dxl1, false);
	FadeDelete("�G�F��", 70, null, true);

	FadeDelete("ef01", 350, Axl1, true);

	Wait(300);


//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0050a]
I fumble trying to get away&, with my senses dull and slow&, 
when a frightful wind blows just above my head&.


</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

	Fw("fw���t_�ʏ�_shout2");
//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0052]
//�y���t�z
<voice name="���t" class="���t" src="voice/dm13/8000100a01">
"Koujaku! Stop!"


</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0053]
Koujaku grips his sword&, once again blazing towards me&.


</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\

	TextBoxDelete(0);
	Wait(16);

//���r�d�F�т��A�Ƒ匕��ガ����
	CreateSE("SE01","se�퓬_����_������01");
	CreateSE("SE02","se�l��_����_�͂�01");
	MusicStart("SE01",0,700,0,1000,null,false);

	CreateColorSP("�G�F��", 4000, "FFFFFF");

	CreateTextureEX("ef01", 1000, Center, Middle, "cg/ef/efx01���M02.jpg");
	Rotate("ef01", 0, @0, 180, @0, null,true);
	Fade("ef01", 0, 1000, null, true);
	Shake("ef01", 500, 2, 10, 0, 0, 1000, null, false);
	Zoom("ef01", 500, 1600, 1600, Dxl1, false);

	CreateTextureSP("bg01", 100, Center, Middle, "cg/bg/l/bg304102_5_���]�^���[���z�[���A���O����_l.jpg");

	Wait(30);
	DeleteAllSt(0,true);

	Shake("bg01", 400, 0, 8, 0, 0, 1000, null, false);
	Move("bg01", 300, @-300, @-200, Dxl2, false);

	FadeDelete("�G�F��", 70, null, true);

	MusicStart("SE02",0,700,0,1000,null,false);

	FadeDelete("ef01", 350, Axl1, true);

{	Fw("fw���t_�ʏ�_shock2");}
//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0054]
//�y���t�z
<voice name="���t" class="���t" src="voice/dm13/8000110a01">
"&.&.&.!"


</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0055]
I throw my entire body to the floor&.


</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\

//	TextBoxDelete(0);

	FadeDelete("bg01", 200, null, false);
	Move("bg01", 200, @200, @0, Axl1, true);


	Fw("fw���t_�ʏ�_rage");
//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0056]
//�y���t�z
<voice name="���t" class="���t" src="voice/dm13/8000120a01">
"-Koujaku! Get yourself together!"

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

	St("C",740, @0,@0,"st�g��_�o�[�T�N_normal");
	FadeSt("C",200,true);
//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0060]
//�y�g���z
<voice name="�g��" class="�g��" src="voice/dm13/8000130a02">
"Guuhhh&.&.&."


</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0061]
The ominous tattoo coiling around Koujaku's back now spans all the way to his face&.

How should I stop Koujaku?
What do I do&.&.&.?


</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
	TextBoxDelete(0);

	DeleteAllSt(200,true);

	SetVolumeEX("@dm*", 2000, 0, null);

//�������u���o�F�����t�̗U�f�v

//�����Ƀ��x���F�R
//��������A�Ɠ����ɂ��Ȃ�
	//���ɃG�t�F�N�g(0)
$HALevel=3;
	HAFade(2000, 0,false);

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0069]
{	Fw("fw���t_�ʏ�_pain");}
//�y���t�z
<voice name="���t" class="���t" src="voice/dm13/8000140a01">
"&.&.&.!"

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
	TextBoxDelete(0);

	CreatePlainSP("�G��", 10000);

	TemptationNoizSet("�G�������t�U�f������",1102);
	TemptationAobaSet("�G�������t�U�f",1100,Center,Middle,"cg/ev/m/ev900�����P�l�̑��t_m.jpg",1000,1000);

	CreateColorSP("�G�F��", 1500, "000000");
	CreateColorSP("�G�������t�U�f���B", 1110, "000000");
	DrawTransition("�G�������t�U�f���B", 1, 0, 400, 100, null, "cg/data/slide_05_00_0.png", true);
	Fade("�G�������t�U�f", 0, 1000, null, true);

	TemptationNoizFade("�G�������t�U�f������",0,null,true);
	Position("@�G�������t�U�f", $TANx1, $TANy1);

	Delete("�G��");

//�����Ƀ��x���F�R
//��������A������A�Ɠ����ɂ�
	//���ɃG�t�F�N�g(0)
	HAFade(2000, 0,false);

	CreateSE("SETL01","se�[��_����_�m�C�Y01L");
	MusicStart("SETL01",0,700,0,1000,null,true);
	TemptationAobaIn("�G�F��");
	Shake($TemptationNoizNut, 600000, 20, 10, 0, 0, 1000, null, false);
	//TemptationAobaOut(200,false);

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0070]
�@�\�\�\�\�@Destroy�@�\�\�\�\


</PRE>
	SetTextM();
	TypeBeginF(150);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

	//TemptationAobaIn("�G�F��");
	Shake($TemptationNoizNut, 600000, 20, 10, 0, 0, 1000, null, false);
	//TemptationAobaOut(200,false);

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0071]
�@�\�\�\�\�@Destroy&, Destroy�@�\�\�\�\


</PRE>
	SetTextM();
	TypeBeginF(150);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

	//TemptationAobaIn("�G�F��");
	Shake($TemptationNoizNut, 600000, 20, 10, 0, 0, 1000, null, false);
	//TemptationAobaOut(200,false);

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0072]
�@�\�\�\�\�@That is the only way�@�\�\�\�\


</PRE>
	SetTextM();
	TypeBeginF(150);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

	//TemptationAobaIn("�G�F��");
	Shake($TemptationNoizNut, 600000, 20, 10, 0, 0, 1000, null, false);
	//TemptationAobaOut(200,false);

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0073]
�@�\�\�\�\�@The only way to stop him�@�\�\�\�\


</PRE>
	SetTextM();
	TypeBeginF(150);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

	SetVolumeEX("SE*", 200, 1, null);
	TemptationAobaOut(200,false);

{	Fw("fw���t_�ʏ�_hard2");}
//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0074]
//�y���t�z
<voice name="���t" class="���t" src="voice/dm13/8000150a01">
"The way to- stop him&.&.&.?"


</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
	TextBoxDelete(0);

	SetVolumeEX("SE*", 0, 700, null);
	TemptationAobaIn("�G�F��");
	Shake($TemptationNoizNut, 600000, 20, 10, 0, 0, 1000, null, false);
	//TemptationAobaOut(200,false);

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0075]
�@�\�\�\�\�@Yes�@�\�\�\�\


</PRE>
	SetTextM();
	TypeBeginF(150);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

	//TemptationAobaIn("�G�F��");
	Shake($TemptationNoizNut, 600000, 20, 10, 0, 0, 1000, null, false);
	//TemptationAobaOut(200,false);

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0076]
�@�\�\�\�\�@Before he destroys you�@�\�\�\�\


</PRE>
	SetTextM();
	TypeBeginF(150);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

	//TemptationAobaIn("�G�F��");
	Shake($TemptationNoizNut, 600000, 20, 10, 0, 0, 1000, null, false);
	//TemptationAobaOut(200,false);

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0077]
�@�\�\�\�\�@You must destroy him�@�\�\�\�\


</PRE>
	SetTextM();
	TypeBeginF(150);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

	//TemptationAobaIn("�G�F��");
	Shake($TemptationNoizNut, 600000, 20, 10, 0, 0, 1000, null, false);
	//TemptationAobaOut(200,false);

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0078]
�@�\�\�\�\ With Scrap �\�\�\�\

</PRE>
	SetTextM();
	TypeBeginF(150);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

	//TemptationAobaIn("�G�F��");
	Shake($TemptationNoizNut, 600000, 20, 10, 0, 0, 1000, null, false);
	//TemptationAobaOut(200,false);

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0079]
�@�\�\�\�\�@There is no other way�@�\�\�\�\


</PRE>
	SetTextM();
	TypeBeginF(150);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

	SetVolumeEX("SE*", 200, 0, null);
	TemptationAobaOut(200,false);

{	Fw("fw���t_�ʏ�_pinch");}
//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0080]
//�y���t�z
<voice name="���t" class="���t" src="voice/dm13/8000160a01">
"&.&.&.No&.&.&."


</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0082]
If I use Scrap&, then Koujaku will end up like Mizuki&.&.&.


</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\

	TextBoxDelete(0);

	TemptationDelete("@�G�������t�U�f���B");
	Delete("�G�F��");

//������z��"dm0810.nss"�ł�
//<voice name="�^�G" class="�^�G" src="voice/dm08/1000670b03">
//�u���̎��ɂ������O���I�m�Ȍ��t�𓊂������Ă�����A�~�Y�L�̈ӎ��͌��ɖ߂��������m��Ȃ��ˁv
//���ꂵ�Ă��������i���q
//���u�I�m�ȁv�ɓ��ꂵ�܂���

	EfRecoIn1(10000,200);


	Delete("�G�F��");
	CreateTextureSP("�G���ʔw�i", 1050, Center, Middle, "cg/bg/bg104021_5_���t��䏊.jpg");

	EfRecoIn2(500);


	Fw("fw�^�G_�ʏ�_normal");

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0083]
//����z
//�y�^�G�z
<voice name="�^�G" class="�^�G" src="voice/dm13/8000170b03">
"If you had chosen the right words at that time&, Mizuki's
 consciousness might have returned&."

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
	TextBoxDelete(0);

	EfRecoOut1(100);

	Delete("�G����*");

	EfRecoIn2(400);


//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0084]
If I had just faced Mizuki&, I might've been able to save
him&.

Then&, could I save Koujaku too&.&.&.?


</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

	Fw("fw���t_�ʏ�_angry");
//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0086]
//�y���t�z
<voice name="���t" class="���t" src="voice/dm13/8000180a01">
"&.&.&.&.&."


</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

	CreateTextureEX("bg01", 100, Center, Middle, "cg/bg/bg304091_5_���]�^���[���z�[��.jpg");
	SetShade("bg01", HEAVY);
	Request("bg01", Smoothing);
	Zoom("bg01", 0, 2000, 2000, null, true);

	St("C",740, @0,@0,"bu�g��_�o�[�T�N_normal");

	Fade("bg01", 200, 1000, null, false);
	FadeSt("C",200,true);

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0087]
There's no time to hesitate&.
I can't think of any other way&.

{
	SoundPlay("@dm016",0,450,true);
}
I look straight into Koujaku's eyes&.

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);


//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0090]
I don't even wonder if this will work or not&.
I have no time to&.

"It'll definitely go well&."

I repeat that to myself countless times&.

"It'll definitely go well&."

I'll definitely&.&.&. save Koujaku&.


</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

	Fw("fw���t_�ʏ�_shout");
//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0093]
//�y���t�z
<voice name="���t" class="���t" src="voice/dm13/8000190a01">
"&.&.&.Koujaku!!"


</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\

	TextBoxDelete(0);

	CreatePlainSP("�G��", 5000);
	CreateColorEX("�G�F��", 4000, "FFFFFF");

	CreateSE("SE00","se�l��_����_����01");
	MusicStart("SE00",0,700,0,1200,null,false);

	Fade("�G��", 0, 500, null, true);
	Shake("�G��", 500, 5, 3, 0, 0, 1000, null, false);
	FadeDelete("�G��", 300, null, false);
	Zoom("�G��", 300, 1100, 1100, null, false);

	Wait(200);

	Fade("�G�F��", 100, 1000, null, true);


	CreateSE("SE01","se�퓬_����_������01");
	CreateSE("SE02","se�퓬_����_����01");
	CreateSE("SE03","se�l��_�Ռ�_�]�|02");
	CreateSE("SE05","se�l��_����_���n02");
	MusicStart("SE01",0,700,0,1000,null,false);

	Delete("�G�w�i");
	DeleteAllSt(0,true);

	CreateTextureEX("fu01", 740, Center, Middle, "cg/fu/fu�g��_�o�[�T�N_normal.png");
	Zoom("fu01", 0, 900, 900, null, true);

	CreateTextureEX("ef01", 1000, Center, Middle, "cg/ef/efx01���M01.jpg");
	Zoom("ef01", 0, 2000, 2000, null, true);
	Rotate("ef01", 0, @0, @180, @0, null,true);
	Fade("ef01", 0, 1000, null, true);
	Shake("ef01", 500, 2, 10, 0, 0, 1000, null, false);
	Zoom("ef01", 500, 1600, 1600, Dxl1, false);

	Zoom("fu01", 500, 1000, 1000, Dxl1, false);
	Fade("fu01", 150, 1000, null, false);

	Wait(30);
	FadeDelete("�G�F��", 70, null, true);

	SetVolumeEX("SE00", 200, 0, null);

	MusicStart("SE02",0,700,0,1000,null,false);
	MusicStart("SE05",0,1000,0,1000,null,false);

	FadeDelete("ef01", 350, Axl1, true);

	MusicStart("SE03",0,700,0,1000,null,false);


	Wait(200);
//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0094]
While he charges at me with his blade overhead&.&.&.
I jump into his chest&.

The sword to the side of my face grazes my hair&.

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
	TextBoxDelete(0);

	CreatePlainSP("�G��", 10000);

	TemptationNoizSet("�G�������t�U�f������",1102);
	TemptationAobaSet("�G�������t�U�f",1100,Center,150,"cg/ev/l/ev900�����P�l�̑��t_l.jpg",2000,2000);

	CreateColorSP("�G�F��", 1500, "000000");
	CreateColorSP("�G�������t�U�f���B", 1110, "000000");
	DrawTransition("�G�������t�U�f���B", 1, 0, 0, 100, null, "cg/data/slide_05_00_0.png", true);
	Fade("�G�������t�U�f", 0, 1000, null, true);

	TemptationNoizFade("�G�������t�U�f������",0,null,true);
	Position("@�G�������t�U�f", $TANx1, $TANy1);

	Delete("�G��");

	CreateSE("SE01","se�l��_����_�ɂ�01");
	MusicStart("SE01",0,700,0,1050,null,false);
	Wait(300);
	TemptationAobaIn("�G�F��");
	TemptationAobaOut(200,false);

	//CreateColorEX("�G�F��", 1500, "000000");
	//Fade("�G�F��", 1000, 500, null, true);

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0100]
�@�\�\�\�\�@Destroy�@�\�\�\�\

</PRE>
	SetTextM();
	TypeBeginF(150);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

	TemptationAobaSet("�G�������t�U�f",1100,Center,445,"cg/ev/l/ev900�����P�l�̑��t_l.jpg",4000,4000);
	DrawTransition("�G�������t�U�f���B", 1, 0, 500, 100, null, "cg/data/slide_05_00_0.png", true);
	Position("@�G�������t�U�f", $TANx1, $TANy1);

	CreateSE("SE01","se�l��_����_�ɂ�01");
	MusicStart("SE01",0,700,0,950,null,false);
	Wait(300);
	TemptationAobaIn("�G�F��");
	TemptationAobaOut(200,false);

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0101]
�@�\�\�\�\�@Destroy&, Destroy�@�\�\�\�\


</PRE>
	SetTextM();
	TypeBeginF(150);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
	TextBoxDelete(0);

	CreateColorSP("�G�F����", 10000, "000000");
	TemptationDelete("�G�������t�U�f���B");
	Delete("�G�F��");
	Delete("�G�F����");

//�����Ƀ��x���F�R
//��������A������A�Ɠ����ɂ�
	//���ɃG�t�F�N�g(0)
	HAFade(2000, 0,true);
	Wait(300);
	//���ɃG�t�F�N�g(0)
	HAFade(2000, 0,false);

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0103]
I ignore my unrelenting headaches&, and concentrate onto
Koujaku's lifeless&, pure white eyes&.


</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

	Fw("fw���t_�ʏ�͍s�g_serious");
//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0104]
//���͔���
//�y���t�z
<voice name="���t" class="���t" src="voice/dm13/8000200a01">
"&.&.&.Koujaku&.&.&. &.&.&.I'm- going inside&.&.&. of you&.&.&.!!"



</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\

	TextBoxDelete(0);

	SetVolumeEX("@dm*", 1000, 0, null);

	Wait(32);

	CreateSE("SE01","se�l��_�S��_�ۓ�01");
	CreateSE("SCRAPINSE01","se�l��_�S��_�ۓ�02L");

	MusicStart("SE01",0,700,0,1000,null,false);
	MusicStart("SCRAPINSE01",0,700,0,1000,null,true);

	CreatePlainSP("�G��", 5000);
	CreatePlainSP("�G��2", 5000);
	Request("�G��", Smoothing);
	SetBlur("�G��", true, 2, 500, 1000, false);

	Zoom("�G��", 30000, 1500, 1500, null, false);

	Zoom("�G��2", 500, 1100, 1100, Dxl1, false);
	FadeDelete("�G��2", 500, null, true);

	Wait(500);

//�����t�A�g���̐��_���E�֓���

/*
	CreateSE("SE01","se�[��_���__����01");
	MusicStart("SE01",0,700,0,1000,null,false);
	SetVolumeEX("SE02", 2000, 0, null);
	CreateColorEX("�G�F��", 5000, "FFFFFF");

	Zoom("�G��", 2500, 2000, 2000, Axl1, false);
	Fade("�G�F��", 2000, 1000, null, true);
	Wait(4500);
*/

	SetVolumeEX("SE*", 300, 0, null);

	ScrapIn("�]���\�Ia",5010);
	TiesMovieNEXT();
	Wait(2000);
	ScrapInEnd();

//�����t�@�C��["dm1390.nss"]

}
