//<continuation number="430">
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


scene dm1200.nss_MAIN
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
	#ev120�c�����̍g���Ƒ��t=true;
	#bg501011_1_�ߋ����Z���摓�t��ߏ��̌���=true;

	//�����[�g�t���O�A�I�����A����GameName
	$PreGameName = $GameName;
	$GameName = "dm1210.nss";

}


scene dm1200.nss
{

	//���V�[���̓��ɕK���L�q
	$�X�N���v�g�o�[�W���� = " $Revision:  $";
	$�\���� = ModuleFileName();
	$�\���� = $SYSTEM_present_process;
	SystemInit();


//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\

	PrintBG("��w�i", 30000);

	OnBG(10,"bg501011_1_�ߋ����Z���摓�t��ߏ��̌���");
	FadeBG(0,true);

	CreateColorSPadd("�G�F��", 5000, "WHITE");

	FadeDelete("��w�i", 1000, null, true);

	Wait(300);

	FadeDelete("�G�F��", 2000, null, true);

	SoundPlay("@dm014",1000,450,true);

	Wait(500);

//�������u���o�F��z�v

//���ߋ��E���t��̋ߏ��̌���

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0010]
//�y���t�i�q���j�z
<voice name="���t�i�q���j" class="���t�i�q���j" src="voice/dm12/0000010c01">
"Hck&, ugh&, hck&.&.&.Mmf&."

//�y���t�i�q���j�z
<voice name="���t�i�q���j" class="���t�i�q���j" src="voice/dm12/0000020c01">
"Uuuungh&, uuf&.&.&."

//�y���t�i�q���j�z
<voice name="���t�i�q���j" class="���t�i�q���j" src="voice/dm12/0000030c01">
"Granny&.&.&. When are you coming hooome&.&.&. Ungh&.&.&."

//�y���t�i�q���j�z
<voice name="���t�i�q���j" class="���t�i�q���j" src="voice/dm12/0000040c01">
"You said you'd be here at five&.&.&. Granny&.&.&."

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
	TextBoxDelete(0);

//	CreatePlainSP("�G��", 5000);
//
//	CreateTextureSP("�G�w�i", 100, -100, Middle, "cg/bg/l/bg501011_1_�ߋ����Z���摓�t��ߏ��̌���_l.jpg");
//	Move("�G�w�i", 0, @0, @-100, Dxl1, true);

//���r�d�F�K�T�b�Ɖ������Ă����������Ǝq���g���������Ă���
	CreateSE("SE01","se����_��_����01");
	MusicStart("SE01",0,700,0,1000,null,false);
//	FadeDelete("�G��", 500, null, true);

	Wait(1500);
	CreateSE("SE01","se�l��_����_����01");
	MusicStart("SE01",0,700,0,1500,null,false);
	Wait(1500);
	SetVolumeEX("SE*", 500, 0, null);
	Wait(500);
//	FadeDelete("�G�w�i", 500, Dxl1, true);

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0011]
//�y�g���i�q���j�z
<voice name="�g���i�q���j" class="�g���i�q���j" src="voice/dm12/0000050c02">
"Aoba!"

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0020]
//�y���t�i�q���j�z
<voice name="���t�i�q���j" class="���t�i�q���j" src="voice/dm12/0000060c01">
"&.&.&.&.&."

//�y�g���i�q���j�z
<voice name="�g���i�q���j" class="�g���i�q���j" src="voice/dm12/0000070c02">
"You were here? I looked all over for you&. &.&.&.Aoba&, your
 eyes are red&. Were you crying?"

//�y���t�i�q���j�z
<voice name="���t�i�q���j" class="���t�i�q���j" src="voice/dm12/0000080c01">
"&.&.&.&.&."

//�y�g���i�q���j�z
<voice name="�g���i�q���j" class="�g���i�q���j" src="voice/dm12/0000090c02">
"&.&.&.Hm?"

//�y���t�i�q���j�z
<voice name="���t�i�q���j" class="���t�i�q���j" src="voice/dm12/0000100c01">
"&.&.&.&.&."

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);


//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0030]
//�y�g���i�q���j�z
<voice name="�g���i�q���j" class="�g���i�q���j" src="voice/dm12/0000110c02">
"It's okay&, just hold on&. I'll wait here with you&. Tell
 me&."

//�y���t�i�q���j�z
<voice name="���t�i�q���j" class="���t�i�q���j" src="voice/dm12/0000120c01">
"&.&.&.I-"

//�y�g���i�q���j�z
<voice name="�g���i�q���j" class="�g���i�q���j" src="voice/dm12/0000130c02">
"Hm?"

//�y���t�i�q���j�z
<voice name="���t�i�q���j" class="���t�i�q���j" src="voice/dm12/0000140c01">
"&.&.&.I was-wasn't- crying&."

//�y�g���i�q���j�z
<voice name="�g���i�q���j" class="�g���i�q���j" src="voice/dm12/0000150c02">
"&.&.&.Haha&, liar&. You're crying right now&."

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);


//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0040]
//�y���t�i�q���j�z
<voice name="���t�i�q���j" class="���t�i�q���j" src="voice/dm12/0000160c01">
"No I'm not!"

//�y�g���i�q���j�z
<voice name="�g���i�q���j" class="�g���i�q���j" src="voice/dm12/0000170c02">
"Okay&, okay&, you're not&. So&, did something happen?"

//�y���t�i�q���j�z
<voice name="���t�i�q���j" class="���t�i�q���j" src="voice/dm12/0000180c01">
"&.&.&.&.&."

//�y�g���i�q���j�z
<voice name="�g���i�q���j" class="�g���i�q���j" src="voice/dm12/0000190c02">
"Hm?"

//�y���t�i�q���j�z
<voice name="���t�i�q���j" class="���t�i�q���j" src="voice/dm12/0000200c01">
"&.&.&.Nothing&."

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);


//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0050]
//�y�g���i�q���j�z
<voice name="�g���i�q���j" class="�g���i�q���j" src="voice/dm12/0000210c02">
"Liar&. If you don't tell me&, I'll tell Tae-san&."

//�y���t�i�q���j�z
<voice name="���t�i�q���j" class="���t�i�q���j" src="voice/dm12/0000220c01">
"&.&.&.&.&."

//�y���t�i�q���j�z
<voice name="���t�i�q���j" class="���t�i�q���j" src="voice/dm12/0000230c01">
"&.&.&.Granny didn't come home&."

//�y�g���i�q���j�z
<voice name="�g���i�q���j" class="�g���i�q���j" src="voice/dm12/0000240c02">
"Tae-san?"

//�y���t�i�q���j�z
<voice name="���t�i�q���j" class="���t�i�q���j" src="voice/dm12/0000250c01">
"She said she'd be here by five&.&.&."

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);


//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0060]
//�y�g���i�q���j�z
<voice name="�g���i�q���j" class="�g���i�q���j" src="voice/dm12/0000260c02">
"It's&.&.&. already seven&."

//�y���t�i�q���j�z
<voice name="���t�i�q���j" class="���t�i�q���j" src="voice/dm12/0000270c01">
"Ungh&.&.&."

//�y�g���i�q���j�z
<voice name="�g���i�q���j" class="�g���i�q���j" src="voice/dm12/0000280c02">
"It's going to be okay! She must be late because she's busy at work&. She'll be here soon&, so don't cry&."

//�y���t�i�q���j�z
<voice name="���t�i�q���j" class="���t�i�q���j" src="voice/dm12/0000290c01">
"I'm not crying!"

//�y�g���i�q���j�z
<voice name="�g���i�q���j" class="�g���i�q���j" src="voice/dm12/0000300c02">
"Yeah&, yeah&, you weren't crying&. Play with me until Tae-san gets here&, okay?"

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);


//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0070]
//�y���t�i�q���j�z
<voice name="���t�i�q���j" class="���t�i�q���j" src="voice/dm12/0000310c01">
"&.&.&.&.&."

//�y�g���i�q���j�z
<voice name="�g���i�q���j" class="�g���i�q���j" src="voice/dm12/0000320c02">
"Time is going to fly by&, okay?"

//�y���t�i�q���j�z
<voice name="���t�i�q���j" class="���t�i�q���j" src="voice/dm12/0000330c01">
"&.&.&.Okay&."

//�y�g���i�q���j�z
<voice name="�g���i�q���j" class="�g���i�q���j" src="voice/dm12/0000340c02">
"Here&, give me your hand&."

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
	TextBoxDelete(0);


	CreateTextureEX("�G�d�u��", 1200, Center, Middle, "cg/ev/l/ev120�c�����̍g���Ƒ��t_l.jpg");

	Move("�G�d�u��", 0, @-100, @-100, null, true);

//���������
	CreateSE("SE01","se�l��_����_����01");
	MusicStart("SE01",0,600,0,1000,null,false);

	Move("�G�d�u��", 1500, @0, @-100, Dxl1, false);
	Fade("�G�d�u��", 1500, 1000, null, true);

	CreateTextureSP("�G�d�u", 1100, Center, Middle, "cg/ev/ev120�c�����̍g���Ƒ��t.jpg");

	Wait(500);

	FadeDelete("�G�d�u��", 1000, null, true);

	Wait(500);

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0079]
//�y�g���i�q���j�z
<voice name="�g���i�q���j" class="�g���i�q���j" src="voice/dm12/0000350c02">
"Don't give in&, Aoba&."

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0080]
//�y���t�i�q���j�z
<voice name="���t�i�q���j" class="���t�i�q���j" src="voice/dm12/0000360c01">
"&.&.&.&.&."

//�y�g���i�q���j�z
<voice name="�g���i�q���j" class="�g���i�q���j" src="voice/dm12/0000370c02">
"When you're lonely or sad&, don't give in&. We need to be
 strong so we can protect Mom and Tae-san&."

//�y���t�i�q���j�z
<voice name="���t�i�q���j" class="���t�i�q���j" src="voice/dm12/0000380c01">
"Yeah&.&.&."

//�y�g���i�q���j�z
<voice name="�g���i�q���j" class="�g���i�q���j" src="voice/dm12/0000390c02">
"Right&, let's have a contest to see who can get the highest on the swings!"

//�y���t�i�q���j�z
<voice name="���t�i�q���j" class="���t�i�q���j" src="voice/dm12/0000400c01">
"&.&.&.&.&."

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0090]
//�y�g���i�q���j�z
<voice name="�g���i�q���j" class="�g���i�q���j" src="voice/dm12/0000410c02">
"Yeah?"

//�y���t�i�q���j�z
<voice name="���t�i�q���j" class="���t�i�q���j" src="voice/dm12/0000420c01">
"Koujaku&, don't give in&.&.&. either&."

//�y�g���i�q���j�z
<voice name="�g���i�q���j" class="�g���i�q���j" src="voice/dm12/0000430c02">
"Yeah!"

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
	TextBoxDelete(0);

//���r�d�F�Q�l�ł����������Ƒ����Ă�������
	CreateSE("SE01","se�l��_����_���苎��q��01");
	MusicStart("SE01",0,700,0,1000,null,false);
	FadeDelete("�G�d�u", 1000, null, true);

	Wait(1000);

	SetVolumeEX("@dm*", 3000, 0, null);

	CreateColorEXadd("�G�F��", 5000, "FFFFFF");
	Fade("�G�F��", 2000, 1000, null, true);

	Wait(2000);

//�����t�@�C��["dm1210.nss"]

}
