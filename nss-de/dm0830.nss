//<continuation number="410">
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


scene dm0830.nss_MAIN
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

	#bg107021_1_�a�@�a���O=true;
	#bg107011_1_�a�@��=true;
	#ev083���t�a�@��=true;

	//�����[�g�t���O�A�I�����A����GameName
	$PreGameName = $GameName;
	if($DM_ROUTE==5){	$GameName = "dm0835.nss";
	}else {		$GameName = "dm0836.nss";
	}

}


scene dm0830.nss
{

	//���V�[���̓��ɕK���L�q
	$�X�N���v�g�o�[�W���� = " $Revision:  $";
	$�\���� = ModuleFileName();
	$�\���� = $SYSTEM_present_process;
	SystemInit();


//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\

	TextBoxDelete(0);
	PrintBG("��w�i", 30000);

	OnBG(10,"bg104051_5_���t���");
	FadeBG(0,true);

	FadeDelete("��w�i", 1000, null, true);

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0010]
Once everyone leaves&, Granny stands up and goes inside the living room&.

She sits down and takes a long&, deep breath&.

I walk up to join her&.

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

//	SoundPlay("@dm012",1000,450,true);

	Fw("fw���t_�ʏ�_worry3");
//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0011]
//�y���t�z
<voice name="���t" class="���t" src="voice/dm08/3000010a01">
"&.&.&.Granny&."

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

	Fw("fw�^�G_�ʏ�_normal2");
//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0012]
//�y�^�G�z
<voice name="�^�G" class="�^�G" src="voice/dm08/3000020b03">
"What?"

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

	Fw("fw���t_�ʏ�_worry3");
//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0013]
//�y���t�z
<voice name="���t" class="���t" src="voice/dm08/3000030a01">
"Can we talk a little more?"

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
	TextBoxDelete(0);

	CreateTextureEX("�G�w�i100", 100, -512, Middle, "cg/bg/m/bg104051_5_���t���_m.jpg");
//	Move("�G�w�i100", 0, @0, @-90, null, true);

	CreateSE("SE01","se����_�x�b�h_�Q��01");
	MusicStart("SE01",0,700,0,1200,null,false);

	Move("�G�w�i100", 1000, @0, @-140, Dxl1, false);
	Fade("�G�w�i100", 1000, 1000, null, true);

	Wait(500);

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0014]
She doesn't answer me&, but I go and sit next to her&.

There are so many things I want to talk about&. But&.&.&. I 
don't know what I should say first&.

My mind's in a frenzy&, and I can't seem to hold onto 
thoughts&.

I stare at my hands on my knees&, and open my mouth while 
thinking&.

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

	Fw("fw���t_�ʏ�_sad");
//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0015]
//�y���t�z
<voice name="���t" class="���t" src="voice/dm08/3000040a01">
"You know&, I&.&.&. always make you worry about me&, and I don't know a lot about stuff&. I'm sorry&, while you were talking  earlier&.&.&."

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

	Fw("fw�^�G_�ʏ�_sigh");

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0020]
//�y�^�G�z
<voice name="�^�G" class="�^�G" src="voice/dm08/3000050b03">
"You're sounding stupid&."

{
	SoundPlay("@dm015",0,450,true);
	Fw("fw�^�G_�ʏ�_sad");
}
//�y�^�G�z
<voice name="�^�G" class="�^�G" src="voice/dm08/3000060b03">
"Aoba&, there's never been a day that's passed by when I'm
 not thankful for your safety&."

{	Fw("fw�^�G_�ʏ�_smile");
}
//�y�^�G�z
<voice name="�^�G" class="�^�G" src="voice/dm08/3000070b03">
"You're my responsibility&.&.&. because I'm your crusty old
 grandmother&."

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

	Fw("fw���t_�ʏ�_shock4");
//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0021]
//�y���t�z
<voice name="���t" class="���t" src="voice/dm08/3000080a01">
"Granny&.&.&."

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0022]
Granny sits silently and stares at me for a few moments&.

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

	Fw("fw�^�G_�ʏ�_sad");
//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0023]
//�y�^�G�z
<voice name="�^�G" class="�^�G" src="voice/dm08/3000090b03">
"&.&.&.You said that you remembered participating in Rhyme&,
 right?"

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

	Fw("fw���t_�ʏ�_serious");
//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0030]
//�y���t�z
<voice name="���t" class="���t" src="voice/dm08/3000100a01">
"Yeah&."

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

//	SoundPlay("@dm006",0,450,true);

	Fw("fw�^�G_�ʏ�_normal");
//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0031]
//�y�^�G�z
<voice name="�^�G" class="�^�G" src="voice/dm08/3000110b03">
"A long time ago&, you had to go to the hospital because of
 an incident in Rhyme&."

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

	Fw("fw���t_�ʏ�_shock2");
//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0032]
//�y���t�z
<voice name="���t" class="���t" src="voice/dm08/3000120a01">
"Huh? An incident in Rhyme?"

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

	Fw("fw�^�G_�ʏ�_normal2");
//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0033]
//�y�^�G�z
<voice name="�^�G" class="�^�G" src="voice/dm08/3000130b03">
"Yeah&. Only now can I say it to you&. When I rushed up to
 you back then&, you didn't remember anything&. Both the
 doctors and the police told me you were caught up in a
 bad fight&."

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

	FwPro("fw�^�G_�ʏ�_sigh",5900,"fw�^�G_�ʏ�_normal2");
//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0034]
//�y�^�G�z
<voice name="�^�G" class="�^�G" src="voice/dm08/3000140b03">
"That you were beat up really bad&, and that you were
 suffering from temporary memory loss&.&.&. And then the
 day when I visited&, something happened&."

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
	TextBoxDelete(0);

	CreateColorEX("�G�F��", 6000, "000000");
	Fade("�G�F��", 1000, 1000, null, true);

	CreateTextureSP("�G�w�i190", 190, -1022, -572, "cg/bg/l/bg107011_1_�a�@��_l.jpg");
	CreateTextureSP("�G�w�i200", 200, Center, Middle, "cg/bg/bg107021_1_�a�@�a���O.jpg");

	CreateColorSP("��z�F", 5000, "#624a2b");
	Request("��z�F", OverlayRender);
	CreateTextureSPmul("��z�g", 1500, Center, Middle, "cg/ef/effi��z01.jpg");

	Wait(1000);
	FadeDelete("�G�F��", 1000, null, true);

//����z�V�[��
//���ꏊ�F�a�@�̌��A���B
//���k�����A�a���̃h�A���g���g���ƒ@���ĊJ����B

	CreateSE("SE01","se����_�h�A��_�m�b�N01");
	MusicStart("SE01",0,700,0,1400,null,false);

	Wait(1000);

	CreateSE("SE01","se����_���t������_�J��01");
	MusicStart("SE01",0,1000,0,800,null,false);

	DrawDelete("�G�w�i200", 500, 100, null, "slide_01_00_1", true);
	SetVolumeEX("SE*", 1000, 0, null);

	Wait(1000);

//	Fw("fw�^�G_�ʏ�_sad");
//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0040]
//�y�^�G�z
<voice name="�^�G" class="�^�G" src="voice/dm08/3000150b03">
"Aoba?"

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
	TextBoxDelete(0);


	CreatePlainSP("�G��", 5000);

	CreateTextureSP("�G�d�u500", 500, 0, InBottom, "cg/ev/m/ev083���t�a�@��_m.jpg");

	Move("�G�摜500", 1000, @0, @50, Dxl1, false);
	FadeDelete("�G��", 1000, null, true);

	Wait(500);

//	Fw("fw�^�G_�ʏ�_shock");
//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0041]
//�y�^�G�z
<voice name="�^�G" class="�^�G" src="voice/dm08/3000160b03">
"&.&.&.!"

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
	TextBoxDelete(0);


	Move("�G�d�u500", 1700, -100, 0, Dxl1, true);

	Wait(500);

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0042]
//�y�����t�z
<voice name="�����t" class="���t" src="voice/dm08/3000170b01">
"Are you surprised?"

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

//	Fw("fw�^�G_�ʏ�_shock");
//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0050]
//�y�^�G�z
<voice name="�^�G" class="�^�G" src="voice/dm08/3000180b03">
"!"

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
	TextBoxDelete(0);

	Move("�G�d�u500", 1500, -200, 0, Axl3, false);
	Wait(1000);
	FadeDelete("�G�d�u500", 500, null, true);

	CreateSE("SE01","se�l��_�Ռ�_�]�|01");
	MusicStart("SE01",0,700,0,1200,null,false);

	CreatePlainSP("�G��", 990);
	Shake("�G��", 200, 0, 10, 0, 0, 500, null, true);
	Delete("�G��");

	Wait(500);

//�����t�A�ǂ����Ƃ��̏�ɓ|��ċC�₷��
//	Fw("fw�^�G_�ʏ�_sad");
//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0051]
//�y�^�G�z
<voice name="�^�G" class="�^�G" src="voice/dm08/3000190b03">
"&.&.&.Aoba&.&.&."

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
	TextBoxDelete(0);

	Wait(800);

//����z�I���

	CreateColorEX("�G�F��", 6000, "000000");
	Fade("�G�F��", 1000, 1000, null, true);

	Delete("��z*");
	Delete("�G�d�u*");
	Delete("�G�w�i190");

	FadeDelete("�G�F��", 1000, null, true);

//���ȉ��Ƀ^�G�̑䎌���P���[�h�ǉ�

	Fw("fw�^�G_�ʏ�_sigh");
//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0052]
//�y�^�G�z
<voice name="�^�G" class="�^�G" src="voice/dm08/3000191b03">
"At that time&, there was a nurse collapsed on the floor
 next to you&.&.&."

//�y�^�G�z
<voice name="�^�G" class="�^�G" src="voice/dm08/3000200b03">
"And for two days after that&, you continued to sleep&. The
 nurse who had fainted said she remembered nothing&." 

{	Fw("fw�^�G_�ʏ�_normal2");
}
//�y�^�G�z
<voice name="�^�G" class="�^�G" src="voice/dm08/3000210b03">
"I went into your room to inspect some things&, and it
 seemed that when you had woken up&, you had lost your
 memory&."

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);


	Fw("fw���t_�ʏ�_worry");
//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0060]
//�y���t�z
<voice name="���t" class="���t" src="voice/dm08/3000220a01">
"&.&.&.&.&."

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

	Fw("fw�^�G_�ʏ�_normal");
//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0061]
//�y�^�G�z
<voice name="�^�G" class="�^�G" src="voice/dm08/3000230b03">
"You've been having those headaches ever since&."

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

	Fw("fw���t_�ʏ�_sad");
//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0062]
//�y���t�z
<voice name="���t" class="���t" src="voice/dm08/3000240a01">
"I&.&.&. remember that&. After that&, my memories came back&.
 They were still fuzzy&, though&."

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

	Fw("fw�^�G_�ʏ�_normal2");
//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0063]
//�y�^�G�z
<voice name="�^�G" class="�^�G" src="voice/dm08/3000250b03">
"That nurse was lightly affected by Scrap&. You entered her
 consciousness and destroyed part of her memory&."

{	Fw("fw�^�G_�ʏ�_sigh");}
//�y�^�G�z
<voice name="�^�G" class="�^�G" src="voice/dm08/3000260b03">
"The headaches&, Scrap&, the personality change&.&.&.I knew that danger was sure to reapppear again&, so I prescribed you
 medicine&."

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

	Fw("fw�^�G_�ʏ�_normal");
//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0070]
//�y�^�G�z
<voice name="�^�G" class="�^�G" src="voice/dm08/3000270b03">
"As you began to become more stable&, I guess it was as if I suppressed the power there&. And as a result&, didn't your
 headaches also fade away?"

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

	Fw("fw���t_�ʏ�_worry3");
//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0071]
//�y���t�z
<voice name="���t" class="���t" src="voice/dm08/3000280a01">
"Yeah&."

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

	Fw("fw�^�G_�ʏ�_sigh");
//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0072]
//�y�^�G�z
<voice name="�^�G" class="�^�G" src="voice/dm08/3000290b03">
"The medicine losing its effect might mean that you're
 having a reaction to the drugs forcing the power down&."

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

	Fw("fw���t_�ʏ�_worry");
//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0073]
//�y���t�z
<voice name="���t" class="���t" src="voice/dm08/3000300a01">
"&.&.&.&.&."

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

	FwPro("fw�^�G_�ʏ�_shock",9250,"fw�^�G_�ʏ�_normal2");
//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0074]
//�y�^�G�z
<voice name="�^�G" class="�^�G" src="voice/dm08/3000310b03">
"Scrap's main principle is destruction&. To kill&, to bring
 ruin&.&.&. But the use of such a thing can change on how and
 for what reason you use it for&."

{
	Fw("fw�^�G_�ʏ�_normal");
}
//�y�^�G�z
<voice name="�^�G" class="�^�G" src="voice/dm08/3000320b03">
"And that's why I want you to face it by yourself now&."

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

//���o�����F�����Ƃ����z�����i���q�j
//"dm5330.nss"

	Fw("fw�^�G_�ʏ�_shout");
//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0080]
//�y�^�G�z
<voice name="�^�G" class="�^�G" src="voice/dm08/3000330b03">
"And never stop&, no matter what happens&. Just believe in
 your own choices along the way and keep pushing forward&."

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

	Wait(500);

	CreateSE("SE01","se�l��_����_����01");
	MusicStart("SE01",0,700,0,1200,null,false);
	SetVolumeEX("SE*", 1000, 0, null);

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0081]
Speaking with fervor&, Granny takes both of my hands and 
grips them tightly&.

Her hands are warm and soft&.
This is the warmth of my gentle Granny&.

It's the warmth of someone important to me&, someone who's 
always watched over me&.

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

	Fw("fw���t_�ʏ�_serious");
//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0082]
//�y���t�z
<voice name="���t" class="���t" src="voice/dm08/3000340a01">
"Granny&."

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

	Fw("fw�^�G_�ʏ�_normal");
//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0083]
//�y�^�G�z
<voice name="�^�G" class="�^�G" src="voice/dm08/3000350b03">
"Hm?"

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

	Fw("fw���t_�ʏ�_serious");
//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0084]
//�y���t�z
<voice name="���t" class="���t" src="voice/dm08/3000360a01">
"I'll definitely come back&."

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

	Fw("fw�^�G_�ʏ�_smile");
//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0090]
//�y�^�G�z
<voice name="�^�G" class="�^�G" src="voice/dm08/3000370b03">
"&.&.&.Yeah&."

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0091]
She nods her head and gives me a tiny smile&.

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

//�ȉ�dm0836&.nns�ֈړ��i���q�j
/*
After that&, she stands up from the sofa and takes something out from one of the shelves&.

//�y�^�G�z
<voice name="�^�G" class="�^�G" src="voice/dm08/3000380b03">
"Take this with you&. It's a new prescription for your headaches&."

//�y���t�z
<voice name="���t" class="���t" src="voice/dm08/3000390a01">
"Thanks&."

//�y�^�G�z
<voice name="�^�G" class="�^�G" src="voice/dm08/3000400b03">
"Make sure to hold onto it&."

//�y���t�z
<voice name="���t" class="���t" src="voice/dm08/3000410a01">
"Okay&."

I tightly grasp the medicine she gives me&.
*/

//	TextBoxDelete(0);

//�����t�@�C��["dm0835.nss"]�@���[�g�̂ݕ\��
//�����t�@�C��["dm0836.nss"]�@���[�g�ȊO�ŕ\��

}
