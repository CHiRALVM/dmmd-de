//<continuation number="20">
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


scene dm0840.nss_MAIN
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
	#bg104031_5_���t�������=true;

	//�����[�g�t���O�A�I�����A����GameName
	$PreGameName = $GameName;

	if($DM_ROUTE==1){	$GameName = "dm0841.nss";
	}else if($DM_ROUTE==2){	$GameName = "dm0842.nss";
	}else if($DM_ROUTE==3){	$GameName = "dm0843.nss";
	}else if($DM_ROUTE==4){	$GameName = "dm0844.nss";
	}else if($DM_ROUTE==5){	$GameName = "dm0845.nss";
	}else if($DM_ROUTE_SEL[0]>1){	$GameName = "dm0840sl.nss";
	}else{$GameName = "dm0840sl.nss";}
}


scene dm0840.nss
{

	//���V�[���̓��ɕK���L�q
	$�X�N���v�g�o�[�W���� = " $Revision:  $";
	$�\���� = ModuleFileName();
	$�\���� = $SYSTEM_present_process;
	SystemInit();

//���O�t�@�C��["dm0835.nss"]�@���[�g�̂ݕ\��
//���O�t�@�C��["dm0836.nss"]�@���[�g�ȊO�\��

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\

	TextBoxDelete(0);

	PrintBG("��w�i", 30000);

	Wait(1000);

	OnBG(10,"bg104031_5_���t�������");
	FadeBG(0,true);

	CreateTextureSP("�G�w�i100", 100, -109, -680, "cg/bg/l/bg104031_5_���t�������_l.jpg");
	CreateTextureSP("�G�w�i101", 101, -109, 0, "cg/bg/l/bg104031_5_���t�������_l.jpg");

	FadeDelete("��w�i", 1000, null, true);

//���ǂ̍U���L�����̂Ƃ���֍s�����ɂ���ēr���ŕ��򂷂�C�x���g
//��dm0821�`dm0824�̂��Ɓi���q�j

//�����Ԍo��

	Wait(500);

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0010]
I go back to my room&, flop onto my bed&, and stare at the 
ceiling&.

The only thing that runs through my head is what Granny 
said&. I don't feel like sleeping at all&.

How Mizuki and his group was manipulated by Morphine&.

How Granny was actually a researcher for Toue once&.

Toue's real intentions&.

How I remembered that I participated in Rhyme before&.

About my power&, Scrap&.

And how I&.&.&. might have broken Mizuki beyond repair&.

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

	CreateSE("SE01","se����_�x�b�h_�Q�Ԃ�");
	MusicStart("SE01",0,700,0,800,null,false);

	Move("�G�w�i100", 1000, @0, -595, Dxl1, false);
	Move("�G�w�i101", 1000, @0, @-100, Dxl1, false);
	FadeDelete("�G�w�i101", 1000, null, true);

	Fw("fw���t_�ʏ�_worry");
//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0019]
//�y���t�z
<voice name="���t" class="���t" src="voice/dm08/4000010a01">
"&.&.&.&.&."

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0020]
No matter how many times I roll around in my sheets or let out deep sighs&, the heavy feeling never goes away&.

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
	TextBoxDelete(0);

//	SoundPlay("@dm006",0,450,true);

	CreateSE("SE01","se�[��_��z_�t���b�V���o�b�N02");
	MusicStart("SE01",0,700,0,1000,null,false);

	CreatePlainSP("�G�ʂP", 10000);

	CreateTextureSP("��z1000", 1000, Center, Middle, "cg/ev/ev071�~�Y�L�ꂵ��.jpg");

	CreateColorSP("��z�F", 5000, "#624a2b");
	Request("��z�F", OverlayRender);

	CreateTextureSPmul("��z�g", 1500, Center, Middle, "cg/ef/effi��z01.jpg");

	FadeDelete("�G�ʂP", 500, null, true);

	Wait(30);

	CreatePlainSP("�G�ʂQ", 10000);
	Delete("��z*");
	FadeDelete("�G�ʂQ", 500, null, true);

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0021]
I really did that to Mizuki&.&.&.

If only I'd listened to what Mizuki had to say back there&, I might've been able to save him&.

That's what Granny said&.

But I wasn't able to do that&.

Even if I didn't know&.&.&. I still can't forgive myself&.

My one action changed Mizuki forever&.

I can't&.&.&.
I can't believe it&.&.&.

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0022]
&.&.&.&.&.

I look up to the ceiling and pound my face into my pillow&.

An uneasy feeling in my arms suddenly surfaces and won't 
seem to fade away at all&.

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
	TextBoxDelete(0);

	Fw("fw���t_�ʏ�_pain2");
//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0030]
//�y���t�z
<voice name="���t" class="���t" src="voice/dm08/4000020a01">
"&.&.&.Damn it&."

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

//	SetVolumeEX("@dm*", 2000, 0, null);

	DeleteFw();

	CreateSE("SE01","se����_�x�b�h_�|�ꍞ��");
	MusicStart("SE01",0,700,0,1000,null,false);

	Move("�G�w�i100", 500, @0, @50, Dxl1, false);
	FadeDelete("�G�w�i100", 500, null, true);

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0031]
&.&.&.I don't want to think about this alone anymore&.

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

//�����t�@�C��["dm0841.nss"]�g�����[�g�̂ݕ\��
//�����t�@�C��["dm0842.nss"]�m�C�Y���[�g�̂ݕ\��
//�����t�@�C��["dm0843.nss"]�~���N���[�g�̂ݕ\��
//�����t�@�C��["dm0844.nss"]�N���A���[�g�̂ݕ\��
//�����t�@�C��["dm0845.nss"]�@���[�g�̂ݕ\��
//�����t�@�C��["dm0840sl.nss"]�L�����|�C���g����������ꍇ�\��
//<A HREF="dm0850.nss" OPERATOR="">//�����t�@�C��["dm0850.nss"]�ی�

}
