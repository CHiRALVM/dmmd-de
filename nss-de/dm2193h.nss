//<continuation number="840">
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


scene dm2193h.nss_MAIN
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
	#ev219�m�C�Y�Y��t�F��=true;
	#ev219�m�C�Y�Y��t�F��a=true;
	#ev219�m�C�Y�Y��t�F��b=true;

	//�����[�g�t���O�A�I�����A����GameName
	$PreGameName = $GameName;
	$GameName = "dm2200.nss";

	if($RECRIB_PLAY==1){//��z���[�h��
		$GameName = "";
		$GameCircle=false;
	}
	#RECLIB04=1;//��z�p�t���O�擾

}


scene dm2193h.nss
{

	//���V�[���̓��ɕK���L�q
	$�X�N���v�g�o�[�W���� = " $Revision:  $";
	$�\���� = ModuleFileName();
	$�\���� = $SYSTEM_present_process;
	SystemInit();


//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\

	SoundPlay("@dm012",0,450,true);

	PrintBG("��w�i", 30000);

	OnBG(10,"bg302012_5_�O���b�^�[����02");
	FadeBG(0,true);

	CreateTextureSP("�G�w�i100", 100, -1019, -487, "cg/bg/l/bg302012_5_�O���b�^�[����02_l.jpg");

	FadeDelete("��w�i", 0, null, true);

	Fw("fw�m�C�Y_�ʏ�X�q�Ȃ�_normal2");
//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0303]
//�y�m�C�Y�z
<voice name="�m�C�Y" class="�m�C�Y" src="voice/dm21/9000750a03">
"&.&.&.Wipe that off&."

{
	Fw("fw���t_�ʏ�_sad");
}
//�y���t�z
<voice name="���t" class="���t" src="voice/dm21/9000760a01">
"&.&.&.uh&, yeah&."

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);


//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0310]
Noiz pulls out several sheets of tissue that had been 
placed on the sideboard and holds them out&.

I take them and wipe the cum dripping from my chin&.

The tension went up halfway and I was biting him quite 
strongly&.&.&. Is he bleeding?

I glance at Noiz's dick&.

There doesn't seem to be anything wrong&. What a relief&.

{
	Fw("fw���t_�ʏ�_worry4");
}
//�y���t�z
<voice name="���t" class="���t" src="voice/dm21/9000770a01">
"&.&.&.I was wondering&. Do you like pain?"

{
	Fw("fw�m�C�Y_�ʏ�X�q�Ȃ�_normal3");
}
//�y�m�C�Y�z
<voice name="�m�C�Y" class="�m�C�Y" src="voice/dm21/9000780a03">
"&.&.&.Not really&."

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);


//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0320]
Noiz suddenly averts his gaze&.

Oh&, well&.&.&.
Each person has their own preferences&.

I don't really feel a need to press the matter&, and while 
I'm a bit surprised&, it's not like I mind&.

That said&.&.&.

The heat cools down&, and many questions that I hadn't 
thought about until now suddenly poke at me&.

Like&, even though I just went with the flow of the 
situation&, when I really think about it&, I did something 
unbelievable&.

Like it was a bad joke&, or a nasty game&.&.&.

But when I had Noiz in my mouth&, he was honest though&.

I think that part of him is a little bit cute after all&.

{
	Fw("fw�m�C�Y_�ʏ�X�q�Ȃ�_normal3");
}
//�y�m�C�Y�z
<voice name="�m�C�Y" class="�m�C�Y" src="voice/dm21/9000790a03">
"&.&.&.I'll go take a shower&."

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

	DeleteFw();

	CreateSE("SE01","se����_�x�b�h_�|�ꍞ��");
	MusicStart("SE01",0,700,0,1000,null,false);

	Move("�G�w�i*", 500, @0, @80, Dxl1, false);
	FadeDelete("�G�w�i*", 500, null, true);

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0330]
Noiz gets up&, lightly adjusts his clothes&, and gets off 
the bed&.

{
	Fw("fw�m�C�Y_�ʏ�X�q�Ȃ�_normal");
}
//�y�m�C�Y�z
<voice name="�m�C�Y" class="�m�C�Y" src="voice/dm21/9000800a03">
"What about you?"

{
	Fw("fw���t_�ʏ�_normal2");
}
//�y���t�z
<voice name="���t" class="���t" src="voice/dm21/9000810a01">
"I'll go after you&."

{
	Fw("fw�m�C�Y_�ʏ�X�q�Ȃ�_normal2");
}
//�y�m�C�Y�z
<voice name="�m�C�Y" class="�m�C�Y" src="voice/dm21/9000820a03">
"Wanna go in together?"

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

	Fw("fw���t_�ʏ�_shock");
//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0340]
//�y���t�z
<voice name="���t" class="���t" src="voice/dm21/9000830a01">
"Well&, uh&.&.&."

{
	Fw("fw�m�C�Y_�ʏ�X�q�Ȃ�_normal");
}
//�y�m�C�Y�z
<voice name="�m�C�Y" class="�m�C�Y" src="voice/dm21/9000840a03">
"&.&.&.Just kidding&."

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

	SetVolumeEX("@dm*", 3000, 0, null);

	CreateSE("SE01","se����_�h�A��_���J��01");
	MusicStart("SE01",0,700,0,1000,null,false);

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0341]
Saying that with an indifferent expression as usual&, Noiz  leaves the room&.


</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

	if($RECRIB_PLAY==1){//��z��
		TextBoxDelete(0);
		ClearFadeAll(1000, true);Wait(2000);
	}

//�����t�@�C��["dm2200.nss"]

}
