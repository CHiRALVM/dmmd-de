//<continuation number="70">
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


scene dm3550scr.nss_MAIN
{
$TEXTBOX_TYPE="�\�I";

//���t�@�C�����ׂ��i�b�g����
	SparksDrop(0);

	CreateColorEXover("@EFWIN/�G���F��", 4990, "FF6600");
	Request("@EFWIN/�G���F��", Lock);
	DrawTransition("@EFWIN/�G���F��", 1, 0, 750, 200, null, "cg/data/slide_02_00_1.png", true);

//	LastfireOGMIX("@EFWIN/�G���F��","@EFWIN/�v���Z�X");
//	Request("@EFWIN/�v���Z�X", Lock);
	$LastfireNutName01="@EFWIN/�G���F��";
	CreateProcessEX("@EFWIN/�v���Z�X","LastfireOGMIXAct");
	Request("@EFWIN/�v���Z�X", Lock);

	CreateSE("@EFWIN/SE11","se��_�퓬_�ߋ��~���N01L");
	Request("@EFWIN/SE11", Lock);


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
	#bg204011_3_�\�I�~���N�̋���������=true;

	//���~���N�\�I�΂̕��V�[�������ƌ����t���O
	$�~���N�\�I�Ȃ�=true;

	//���~���N�\�I�΂̕��������x
	$�~���N�̃g���E�}=3;

	//�����[�g�t���O�A�I�����A����GameName
	$PreGameName = $GameName;
	$GameName = "dm3560scr.nss";

}


scene dm3550scr.nss
{

	//���V�[���̓��ɕK���L�q
	$�X�N���v�g�o�[�W���� = " $Revision:  $";
	$�\���� = ModuleFileName();
	$�\���� = $SYSTEM_present_process;
	SystemInit();


//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\


	PrintBG("��w�i", 30000);

	CreateColorSP("�G�F��", 5000, "000000");

	OnBG(10,"bg204011_3_�\�I�~���N�̋���������");
	FadeBG(0,true);

	FadeDelete("��w�i", 0, null, true);

//�������u���F�ԈႢ���[�g�ɍs���Ɖ΂̕�������Ă����܂��A�Ƃ��v
//�����o�F�΂̕�
//�������u���o�F�΂̕��A�t�@�C���܂������������đg�ݍ��݁B�v
//�t�@�C���܂����p��EF�E�B���h�E����܂�@EFWIN�i���q
//�g���I����Ă�@EFWIN�͏����Ȃ��ł�������

/*
	$SYSTEM_effect_drop_image = "cg/ef/efc�΂̕�001_s.png";
	$SYSTEM_effect_drop_dencity = 30;
	$SYSTEM_effect_drop_speed = 7;
	$SYSTEM_effect_drop_swing = 128;
	//$SYSTEM_effect_drop_rotate_z = 360;
	CreateEffect("�G���ʉ�", 4100, Center, Middle, 768, 565, "Drop");

	SetAlias("�G���ʉ�","�G���ʉ�");
	Zoom("�G���ʉ�", 0, 2000, 2000, null, true);
	Zoom("�G���ʉΑ�", 0, 2000, 2000, null, true);
	Fade("�G���ʉ�*", 0, 1000, null, true);
*/

//����̂ق��Œ�`���܂�
//	SparksDrop(0);

//	CreateColorSPover("@EFWIN/�G���F��", 4990, "FF6600");
//	Request("@EFWIN/�G���F��", Lock);
//	DrawTransition("@EFWIN/�G���F��", 1, 0, 750, 200, null, "cg/data/slide_02_00_1.png", true);
//	LastfireOGMIX("@EFWIN/�G���F��","@EFWIN/�v���Z�X");
//	Request("@EFWIN/�v���Z�X", Lock);

	Request("@EFWIN/�v���Z�X", Start);


	$�~���N�̃g���E�}=3;
	MinkSparksDropStrengthFade();

/*
//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0010]
//������
//�y�ꑰ�̒j�z
<voice name="�ꑰ�̒j" class="�ꑰ�̒j" src="voice/dm35/5000010e12">
"Ahhhhhhhhhhhh!!!"

//������
//�y�ꑰ�̏��z
<voice name="�ꑰ�̏�" class="�ꑰ�̏�" src="voice/dm35/5000020e13">
"Ahhhhhhhhhhhh!!!"


</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);
*/

//�������u���o�F��L�̉����Ńn�b�Ƃ��Ėڊo�߂������Ɂv
	CreateVOICE("�ꑰ�̒j","dm35/5000010e12");
	CreateVOICE("�ꑰ�̏�","dm35/5000020e13");
	MusicStart("�ꑰ�̒j",0,700,0,1000,null,false);
	MusicStart("�ꑰ�̏�",0,700,0,1000,null,false);

	$SETime = RemainTime("�ꑰ�̏�")-300;
	WaitKey($SETime);

	DrawDelete("�G�F��", 200, 100, null, "slide_02_00_0", true);

{	Fw("fw���t_�ʏ�_shock2");}
//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0011]
//�y���t�z
<voice name="���t" class="���t" src="voice/dm35/5000030a01">
"!"

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

//����̂ق��Œ�`���܂�
//	CreateSE("@EFWIN/SE11","se��_�퓬_�ߋ��~���N01L");
//	Request("@EFWIN/SE11", Lock);
	MusicStart("@EFWIN/SE11",5000,500,0,800,null,true);

	$�~���N�\�I�Ȃ�=true;

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0012]
Screams pierce my eardrums&, unconsciously causing me to 
flinch&.

Screams&, roars&, explosions&, crying voices&, gunshots&.

Surrounded by the sound of chaos&, I can only continue to 
stand frozen in place&.

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0020]
The area is thick with trees with a deep red fire dancing 
around it&, leaving a trail of smoke&.

Above me is a starless night sky&, but around me it's as 
bright as day&.

Under the dark sky&, crowds of shadows run about in a 
frenzy&.

People escaping&, and other people chasing after them&.

The ones running away are most likely Mink's people&, and 
the pursuers Toue Inc&.'s people&.

These are no doubt Mink's memories of the past&.

What weighs down his heart&, the wound that still bleeds&.


</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
	TextBoxDelete(0);

	CreateSE("SE02","se�l��_�S��_�ۓ�01");
	MusicStart("SE02",0,1200,0,1000,null,false);

	CreatePlainEX("�G��", 100);
	Zoom("�G��", 0, 1250, 1250, null, true);
	FadeFFR("�G��", 0,500, 200, 0, 0, 30,null, true);
	Delete("�G��");

	Fw("fw���t_�ʏ�_pain");
//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0024]
//�y���t�z
<voice name="���t" class="���t" src="voice/dm35/5000040a01">
"&.&.&.!"


</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0025]
Suddenly my heart jumps as my entire body burns up&.

&.&.&.It's hot&.

It's hot&.&.&.!
The flames are scorching&.&.&.

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

	Fw("fw���t_�ʏ�_pinch");
//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0030]
//�y���t�z
<voice name="���t" class="���t" src="voice/dm35/5000050a01">
"&.&.&.&.&.!"


</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0031]
I can see my limbs burning&.
But they're not&.

&.&.&.The exact same with Rhyme&.
My brain is taking the damage and I'm only hallucinating&.

But this&.&.&.
This feels as painful as in real life&.

I take in a heated breath&, breathing turning into 
suffocating as my lungs feel as if they're burning&.


</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

	Fw("fw���t_�ʏ�_pain2");
//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0039]
//�y���t�z
<voice name="���t" class="���t" src="voice/dm35/5000060a01">
"Kah&.&.&. Ha&.&.&.!"

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0040]
This isn't reality&. It's the same thing as watching 
something that's been recorded&.

I know that&, but&.&.&.
The pain&, the strained tears&, they make me want to vomit&.

As if to lay a final blow&, the dying screams of people 
tear at my eardrums&.


</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

	Fw("fw���t_�ʏ�_pinch");
//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0045]
//�y���t�z
<voice name="���t" class="���t" src="voice/dm35/5000070a01">
"Guh&.&.&.!"


</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0046]
But&.&.&. I have to keep going&.

I need to find Mink&.&.&.

I hold my arms close to me to try to protect myself from 
the flames and slowly advance&.

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

	CreateSE("SEL02","se����_��_����01");
	MusicStart("SEL02",0,700,0,500,null,true);

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0050]
This isn't reality&.
This is fake&.

This all happened in the past&.

With nothing in mind other than that&, I look for Mink 
within the screams and deaths&.

&.&.&.Not here&.
He's not anywhere&.

Where is Mink&.&.&.?


</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

	SetVolumeEX("SEL02", 300, 0, null);

//�����t�@�C��["dm3560scr.nss"]

}
