//<continuation number="180">
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


scene dm3613.nss_MAIN
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
	#�C�x���g�t�@�C����=true;

	//�����[�g�t���O�A�I�����A����GameName
	$PreGameName = $GameName;
	SparksDropDelete(0);
	$GameName = "dm3614ed.nss";

}


scene dm3613.nss
{

	//���V�[���̓��ɕK���L�q
	$�X�N���v�g�o�[�W���� = " $Revision:  $";
	$�\���� = ModuleFileName();
	$�\���� = $SYSTEM_present_process;
	SystemInit();


//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\

//�������u���o�F�A�������������܂����v

	PrintBG("��w�i", 30000);

	OnBG(10,"bg304091_5_���]�^���[���z�[��");
	FadeBG(0,true);
	St("C",740, @0,@0,"bu�~���N_�ʏ�_normal2");
	FadeSt("C",0,true);

	Wait(16);

	CreatePlainSP("�G�ʞO", 1000);
	SetShade("�G�ʞO", SEMIHEAVY);

	CreateColorSP("�G�F��", 1990, "000000");
	DrawTransition("�G�F��", 1, 0, 700, 100, null, "cg/data/slide_05_00_0.png", true);

	St("C",1740, @0,120,"fu�~���N_�ʏ�_normal2");
	FadeSt("C",0,true);
	Request("@StNameC/C*", Smoothing);
	Zoom("@StNameC/C*", 0, 2000, 2000, null, true);

	FadeDelete("��w�i", 0, null, true);

	CreatePlainSP("�G��", 20000);
	CreateTextureSP("�G���Ė쌴�O", 100, Center, Middle, "cg/bg/bg204011_3_�\�I�~���N�̋���������.jpg");
	Zoom("�G���Ė쌴�O", 0, 1500, 1500, null, true);
	SetShade("�G���Ė쌴�O", HEAVY);

	Wait(16);

	DeleteAllSt(0,true);
	Delete("�G�F��");
	Delete("�G�ʞO");

	CreatePlainEX("�G�ʉ�", 1000);
	CreateSE("SE01","se�[��_����_�h��03");
	MusicStart("SE01",0,1200,0,800,null,false);

	Delete("�G��");
	FadeFFR("�G�ʉ�", 0,1000, 200, 0, 0, 30,null, true);
	FadeDelete("�G�ʉ�", 300, null, true);

//�����o�F�h���I�Ɖ������āA�܂����肪��C�Ƀ~���N�̉ߋ��̏Ă����X�ɖ߂�
//�����o�F�΂̕�
//���r�d�F�΂̕�

	PrintGO("��w�i", 30000);

	OnBG(10,"bg204011_3_�\�I�~���N�̋���������");
	FadeBG(0,true);

	SparksDrop(0);
	$�~���N�̃g���E�}=3;
	MinkSparksDropStrengthFade();

	CreateSE("SE11","se��_�퓬_�ߋ��~���N01L");
	MusicStart("SE11",3000,500,0,1000,null,true);

	Wait(1000);

//�����݁F�����@SE�p�ɉ��H���K�v
//���r�d����
//�y�����̒j�z
//<voice name="�����̒j" class="�����̒j" src="voice/dm36/1300010e29">
//�u�������������������c�c�v

//���r�d����
//�y�����̒j�z
//<voice name="�����̒j" class="�����̒j" src="voice/dm36/1300020e29">
//�u���������������c�c�c�c�v

	CreateTextureEX("�G�w�i��", 800, Center, Middle, "cg/bg/bg204011_3_�\�I�~���N�̋���������.jpg");
	Request("�G�w�i��", Smoothing);
	SetShade("�G�w�i��", HEAVY);
	Zoom("�G�w�i��", 0, 1500, 1500, null, true);


	CreateTextureSP("�G�w�i", 110, Center, Middle, "cg/bg/bg204011_3_�\�I�~���N�̋���������.jpg");
	Request("�G�w�i", Smoothing);
	SetShade("�G�w�i", HEAVY);
	Zoom("�G�w�i", 0, 1500, 1500, null, true);

	CreateTextureSP("�G�w�i�Q", 100, Center, Middle, "cg/bg/bg204011_3_�\�I�~���N�̋���������.jpg");
	Request("�G�w�i�Q", Smoothing);
	SetShade("�G�w�i�Q", HEAVY);
	Zoom("�G�w�i�Q", 0, 2000, 2000, null, true);

	CreateTextureSP("�G�L����", 105, Center, -284, "cg/st/l/st�~���N_�ʏ퐳��_serious_l.png");
	Request("�G�L����", Smoothing);
	SetBlur("�G�L����", true, 3, 500, 300, false);

	FadeDelete("��w�i", 1500, null, true);

	Wait(1000);

	Fw("fw���t_�ʏ�_worry4");
//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0010]
//�y���t�z
<voice name="���t" class="���t" src="voice/dm36/1300030a01">
"&.&.&.&.&."


</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0011]
&.&.&.I'm back here?

In that forest of Mink's past&.&.&.!?

Why&.&.&.

I already finished with Scrap&.&.&.

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);


//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0020]
&.&.&.&.&.<k><?>
&.&.&.No&.

It's not over&.

I'm still inside Mink's head&.

Scrap is&.&.&.

&.&.&.I failed&.

Mink's lower body is dyed red with the reflection of the 
flames&, and he touches my cheek as his hair flows in the 
hot winds&.


</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\

	TextBoxDelete(0);

	SetVolumeEX("SE*", 3000, 0, null);

	Wait(200);

	SoundPlay("@dm006",0,450,true);

	Fade("�G�w�i��", 0, 1000, null, true);
	Fade("�G�w�i", 0, 1000, null, true);

	St("C",740, @0,@0,"bu�~���N_�ʏ퐳��_serious");
	FadeSt("C",0,true);

	Fade("�G�w�i��", 1000, 0, null, true);

	Wait(200);

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0021]
//�y�~���N�z
<voice name="�~���N" class="�~���N" src="voice/dm36/1300040a05">
"I don't know if the two of us will make it out of here
 safely&."

//�y�~���N�z
<voice name="�~���N" class="�~���N" src="voice/dm36/1300050a05">
"So I'll just take along the most important thing&."

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

	Fw("fw���t_�ʏ�_shock2");
//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0030]
//�y���t�z
<voice name="���t" class="���t" src="voice/dm36/1300060a01">
"&.&.&.What&.&.&.?"


</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

	DeleteFw();
	DeleteAllSt(200,true);

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0031]
Mink's eyes are looking at me&, but somehow they're not&.

The red flames reflect in his eyes&.
Suddenly&, dread comes over me and I try to get away from 
him&.


</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

	CreateSE("SE01","se�l��_����_����01");
	MusicStart("SE01",0,700,0,1000,null,false);
	Shake("�G�w�i", 500, 5, 3, 0, 0, 1000, null, false);

	Fw("fw���t_�ʏ�_pain");
//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0032]
//�y���t�z
<voice name="���t" class="���t" src="voice/dm36/1300070a01">
"&.&.&.!"


</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0033]
But he grabs me by the neck with both of his hands&.


</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

	MoveFTP1("@�G�w�i�Q",10000,10,8);
	MoveFTP2("@�G�L����",10000,5,4);

	Fade("�G�w�i", 500, 0, null, true);
	Delete("�G�w�i");

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0034]
//�y�~���N�z
<voice name="�~���N" class="�~���N" src="voice/dm36/1300080a05">
"There is one sacred part of a human's body&. The head&."

//�y�~���N�z
<voice name="�~���N" class="�~���N" src="voice/dm36/1300090a05">
"The soul is held there&. If I hold onto it&, the devil won't
 take you away&."

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

	Fw("fw���t_�ʏ�_pinch");
//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0040]
//�y���t�z
<voice name="���t" class="���t" src="voice/dm36/1300100a01">
"What are&.&.&. you tal-!"

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0040a]
//�y�~���N�z
<voice name="�~���N" class="�~���N" src="voice/dm36/1300110a05">
"You have the same smell as me&."

//�y�~���N�z
<voice name="�~���N" class="�~���N" src="voice/dm36/1300120a05">
"I've always been followed by the shadow of death and the
 destruction of life&."

{	Fw("fw���t_�ʏ�_hard");}
//�y���t�z
<voice name="���t" class="���t" src="voice/dm36/1300130a01">
"!"

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0040b]
//�y�~���N�z
<voice name="�~���N" class="�~���N" src="voice/dm36/1300140a05">
"Being by you in your last moments is the least I can do&."

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

	Fw("fw���t_�ʏ�_hard2");
//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0041]
//�y���t�z
<voice name="���t" class="���t" src="voice/dm36/1300150a01">
"Mink&.&.&. Hey!"


</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0050]
&.&.&.I have to get away&.

I've failed at Scrap&.

It's probably&.&.&.
Because I changed the past&.

I had saved the people being caught and killed by the 
soldiers&.

That may have distorted Mink's memories&.

The past is something that has already happened&.

You can't change it now&.

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);


//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0060]
So&.&.&.

I had to have watched instead of intervened&.


</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);



//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0061]
//�y�~���N�z
<voice name="�~���N" class="�~���N" src="voice/dm36/1300160a05">
"I'll be taking you along with me&. Your&.&.&. soul&."


</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

	CreateColorEX("�G�F��", 5000, "000000");

	Zoom("�G�w�i�Q", 1500, 1100, 1100, AxlDxl, false);
	Zoom("�G�L����", 1500, 1200, 1200, AxlDxl, false);

	Fade("�G�F��", 1000, 1000, null, true);
	MoveFTP1stop();
	MoveFTP2stop();

	CreateSE("SE01","se�l��_����_����01");
	MusicStart("SE01",0,900,0,1000,null,false);

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0062]
Mink hugs me tightly&.


</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

	Fw("fw���t_�ʏ�_pain");
//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0063]
//�y���t�z
<voice name="���t" class="���t" src="voice/dm36/1300170a01">
"No&, Mink! Let go! Let go of me&.&.&.!"

{	Fw("fw���t_�ʏ�_hard2");}
//�y���t�z
<voice name="���t" class="���t" src="voice/dm36/1300180a01">
"Mink&.&.&.!"

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
	TextBoxDelete(0);

//�����o�F�K�X�b�Ƃ��Ȃ��������đ��t�C��
//���r�d�F�K�X�b�Ƃ��Ȃ��������đ��t�C��

	SetVolumeEX("@dm*", 2000, 0, null);
	Wait(2000);

	CreateSE("SE01","se�퓬_�Ō�_�q�b�g��04");
	CreateSE("SE02","se�퓬_�Ō�_�q�b�g��02");
	MusicStart("SE01",0,1000,0,1000,null,false);
	MusicStart("SE02",0,1000,0,1000,null,false);

	SparksDropDelete(0);

	ClearFadeAll(2000, true);

	Wait(2000);

//�����t�@�C��["dm3614ed.nss"]

}
