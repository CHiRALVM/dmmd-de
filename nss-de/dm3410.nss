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


scene dm3410.nss_MAIN
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
	#ev341�����t�A�~���N�ɒ�R=true;

	//�����[�g�t���O�A�I�����A����GameName
	$PreGameName = $GameName;
	$GameName = "dm3420.nss";

}


scene dm3410.nss
{

	//���V�[���̓��ɕK���L�q
	$�X�N���v�g�o�[�W���� = " $Revision:  $";
	$�\���� = ModuleFileName();
	$�\���� = $SYSTEM_present_process;
	SystemInit();


//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\


	PrintBG("��w�i", 30000);

	CreateColorSP("�G�F��", 5000, "000000");

	OnBG(10,"bg302021_5_�O���b�^�[���ԓV��");
	FadeBG(0,true);

	FadeDelete("��w�i", 1000, null, true);

	CreateSE("SE01","se�l��_�S��_�ۓ�02");
	MusicStart("SE01",0,700,0,1000,null,false);

	Wait(2000);

	DrawTransition("�G�F��", 500, 1000, 800, 100, null, "cg/data/slide_05_00_0.png", true);
	Wait(500);
	DrawTransition("�G�F��", 500, 800, 1000, 100, null, "cg/data/slide_05_00_0.png", true);

	Wait(2000);

	CreateSE("SE01","se�l��_�S��_�ۓ�02");
	MusicStart("SE01",0,700,0,1000,null,false);

	Wait(1000);

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0009]
//�y�����t�z
<voice name="�����t" class="���t" src="voice/dm34/1000010b01">
"&.&.&.&.&."

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
	TextBoxDelete(0);

	DrawTransition("�G�F��", 1500, 1000, 0, 500, null, "cg/data/slide_05_00_0.png", true);
	Wait(1000);
//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0010]
//�y�����t�z
<voice name="�����t" class="���t" src="voice/dm34/1000020b01">
"&.&.&.Hah&."

//�y�����t�z
<voice name="�����t" class="���t" src="voice/dm34/1000030b01">
"Haha&, Ahah&.&.&. Ahaha!"

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0011]
//�y�~���N�z
<voice name="�~���N" class="�~���N" src="voice/dm34/1000040a05">
"&.&.&.!?"

//�y�~���N�z
<voice name="�~���N" class="�~���N" src="voice/dm34/1000050a05">
"&.&.&.You&."

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
	TextBoxDelete(0);

	DeleteFw();

	CreateSE("SE01","se�l��_����_�ߎC��01");
	MusicStart("SE01",0,700,0,1000,null,false);

	SoundPlay("@dm017",3000,450,true);

	CreateTextureEX("�G�d�u102", 102, -660, -335, "cg/ev/l/ev341�����t�A�~���N�ɒ�R_l.jpg");
	CreateTextureEX("�G�d�u101", 101, Center, Middle, "cg/ev/ev341�����t�A�~���N�ɒ�R.jpg");
	CreateTextureEX("�G�d�u100", 100, -748, -537, "cg/ev/l/ev341�����t�A�~���N�ɒ�R_l.jpg");
	Move("�G�d�u100", 500, -748, -434, Dxl3, false);
	Fade("�G�d�u100", 500, 1000, null, true);

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0020]
//�y�����t�z
<voice name="�����t" class="���t" src="voice/dm34/1000060b01">
"What&.&.&. I've been dragged out just like you wanted&.&.&.
 Ngh&, ah&.&.&."

//�y�~���N�z
<voice name="�~���N" class="�~���N" src="voice/dm34/1000070a05">
"&.&.&.&.&."

//�y�����t�z
<voice name="�����t" class="���t" src="voice/dm34/1000080b01">
"Holding him down&, bringing me out and still doing the same
 to me&.&.&. Wasn't it your intention to have full control
 over 'Aoba'? &.&.&.Haha!"

//�y�����t�z
<voice name="�����t" class="���t" src="voice/dm34/1000090b01">
"Then he's much more useful as a tool&, right? But I'm going
 to have to apologize&.&.&. I have no intention to yield to
 you&. Ever&."

//�y�����t�z
<voice name="�����t" class="���t" src="voice/dm34/1000100b01">
"Because I have the power of Scrap&.&.&. If you want to do
 something&, why don't we? In exchange&.&.&."

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

	CreateSE("SE01","se�l��_����_�ߎC��01");
	MusicStart("SE01",0,700,0,1400,null,false);

	Move("�G�d�u100", 500, -853, -183, Dxl3, true);

//	Fw("fw���t_�ʏ�_normal");
//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0030]
//�y�����t�z
<voice name="�����t" class="���t" src="voice/dm34/1000110b01">
"I'll churn your brain into little tiny pieces&.&.&."

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
	TextBoxDelete(0);

	CreateSE("SE01","se�l��_����_�ߎC��02");
	MusicStart("SE01",0,700,0,1000,null,false);

	Move("�G�d�u100", 500, -1022, 0, Dxl3, false);
	Fade("�G�d�u101", 500, 1000, null, true);
	Delete("�G�d�u100");

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0040]
//�y�~���N�z
<voice name="�~���N" class="�~���N" src="voice/dm34/1000120a05">
"&.&.&.Shut up&.&.&.!"

//�y�����t�z
<voice name="�����t" class="���t" src="voice/dm34/1000130b01">
"Haha&, ahahaha- Ha! More&.&.&. More!"

{
	CreateSE("SE01","se�l��_����_�ߎC��10");
	MusicStart("SE01",0,700,0,1000,null,false);
}
//�y�����t�z
<voice name="�����t" class="���t" src="voice/dm34/1000140b01">
"Ahaha&, ah- ngh- ah&.&.&. Go as far as you can inside of
 me&.&.&. Here!"

//�y�~���N�z
<voice name="�~���N" class="�~���N" src="voice/dm34/1000150a05">
"&.&.&.!"

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

	CreateSE("SE01","se�l��_����_�ߎC��10");
	MusicStart("SE01",0,700,0,1400,null,false);

	Move("�G�d�u102", 500, -536, -411, Dxl3, false);
	Fade("�G�d�u102", 500, 1000, null, true);

	Delete("�G�d�u101");

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0041]
//�y�����t�z
<voice name="�����t" class="���t" src="voice/dm34/1000160b01">
"Ahahaha&, stonger&, with the intent to kill!!!"

//�y�����t�z
<voice name="�����t" class="���t" src="voice/dm34/1000170b01">
"Ahahaha&.&.&.!"

{
	SetVolumeEX("@dm*", 1000, 0, null);
}
//�y�����t�z
<voice name="�����t" class="���t" src="voice/dm34/1000180b01">
"Ahahahahahahahahaha!!!"

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
	TextBoxDelete(0);

	ClearFadeAll(2000, true);

	Wait(3000);

//�����t�@�C��["dm3420.nss"]

}
