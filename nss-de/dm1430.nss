//<continuation number="220">
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


scene dm1430.nss_MAIN
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
	$GameName = "dm1440scr.nss";

	//�����Ƀ��x���ݒ�
	$HALevel=4;

}


scene dm1430.nss
{

	//���V�[���̓��ɕK���L�q
	$�X�N���v�g�o�[�W���� = " $Revision:  $";
	$�\���� = ModuleFileName();
	$�\���� = $SYSTEM_present_process;
	SystemInit();


//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\

	PrintBG("��w�i", 30000);

	//OnBG(10,"bg503011_1_�g������g������");
	//FadeBG(0,true);

	//St("C",740, @0,@0,"st�g��_�o�[�T�N���C_normal");
	//FadeSt("C",0,true);

	CreateCamera("�b", 0, 0, 1000);
	SetAlias("�b","�b");

	CreateTextureSP("�b/�G�ʏ�w�i", 0, Center, Middle, "cg/bg/l/bg202021_3_�\�I�g�����Ə�����_l.jpg");
	Request("�b/�G�ʏ�w�i", Smoothing);
	Zoom("�b/�G�ʏ�w�i", 0, 500, 500, null, true);

	CreateMaskEX("�b/�G��������q", 0, 0, 0, "cg/bg/x/bg202021_3_�\�I�g�����Ə�����_�}�X�N����q.png", false);
	CreateTextureSPover("�b/�G��������q/�G������q", 11, Center, Middle, "cg/anime/Center/bloodA_5.png");
	Zoom("�b/�G��������q/�G������q", 0, 550, 500, null, true);
	SetShade("�b/�G��������q/�G������q", SEMIHEAVY);

	CreateTextureSPover("�b/�G��������q/�G������q��", 0, Center, -50, "cg/anime/Left/blood_C_6.png");
	Zoom("�b/�G��������q/�G������q��", 0, 550, 500, null, true);
	SetShade("�b/�G��������q/�G������q��", SEMIHEAVY);

	CreateTextureSPover("�b/�G��������q/�G������q�O", 0, Center, -50, "cg/anime/Right/blood_B_8.png");
	Zoom("�b/�G��������q/�G������q�O", 0, 550, 500, null, true);
	SetShade("�b/�G��������q/�G������q�O", SEMIHEAVY);

	CreateTextureSP("�b/�G�����ʔw�i", 0, Center, Middle, "cg/bg/x/bg202021_3_�\�I�g�����Ə�����_���ʏ�q��.png");

	CreateTextureEX("�b/�G���G����", 500, Center, 576, "cg/st/l/st�g��_�o�[�T�N�\�I_worry3_l.png");
	Request("�b/�G���G����", Smoothing);
	$YScale=ImageVertical("�b/�G���G����");
	$KJSetPos=576-($YScale/2)+40-317;
	Move("�b/�G���G����", 0, @0, $KJSetPos, null, true);
	Fade("�b/�G���G����", 0, 1000, null, true);
	Zoom("�b/�G���G����", 0, 250, 250, null, true);

	MoveCamera("�b", 0, @0, -50, 2000, null, true);

	FadeDelete("��w�i", 1000, null, true);

	SoundPlay("@dm015",2000,450,true);

//�����Ƃ̘a���ɖ߂�A�o�[�T�N���[�h�Ő��C�����߂��Ă���g���������Ă���

	Fw("fw���t_�ʏ�_worry4");
//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0010]
//�y���t�z
<voice name="���t" class="���t" src="voice/dm14/3000010a01">
"Koujaku&.&.&."


</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0011]
I return to the Japanese-style room&, and Koujaku is 
standing in front of me&.

The tattoo is eating at him still&, but the light is back 
in his eyes&.

But he looks miserable&.


</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

	CreatePlainSP("�G��", 1800);

	CreateTextureSP("�b/�G���G����", 500, Center, 576, "cg/st/l/st�g��_�o�[�T�N�\�I_think2_l.png");
	Request("�b/�G���G����", Smoothing);
	$YScale=ImageVertical("�b/�G���G����");
	$KJSetPos=576-($YScale/2)+40-317;
	Move("�b/�G���G����", 0, @0, $KJSetPos, null, true);
	Fade("�b/�G���G����", 0, 1000, null, true);
	Zoom("�b/�G���G����", 0, 250, 250, null, true);

	FadeDelete("�G��", 200, null, true);

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0013]
//�y�g���z
<voice name="�g��" class="�g��" src="voice/dm14/3000020a02">
"I thought it was a lie when I came back&. That it was all a bad dream&. But it wasn't&. When I realized that&, that's
 when I really went insane&."

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\

	CreatePlainSP("�G��", 18000);

	CreateTextureSP("�b/�G���G����", 500, Center, 576, "cg/st/l/st�g��_�o�[�T�N�\�I_think_l.png");
	Request("�b/�G���G����", Smoothing);
	$YScale=ImageVertical("�b/�G���G����");
	$KJSetPos=576-($YScale/2)+40-317;
	Move("�b/�G���G����", 0, @0, $KJSetPos, null, true);
	Fade("�b/�G���G����", 0, 1000, null, true);
	Zoom("�b/�G���G����", 0, 250, 250, null, true);

	FadeDelete("�G��", 200, null, true);

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0014]
//�y�g���z
<voice name="�g��" class="�g��" src="voice/dm14/3000030a02">
"I thought I'd go mad&. That I should die too&. That it'd be
 better if I did&."


</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\

	CreatePlainSP("�G��", 18000);

	CreateTextureSP("�b/�G���G����", 500, Center, 576, "cg/st/l/st�g��_�o�[�T�N�\�I_cry2_l.png");
	Request("�b/�G���G����", Smoothing);
	$YScale=ImageVertical("�b/�G���G����");
	$KJSetPos=576-($YScale/2)+40-317;
	Move("�b/�G���G����", 0, @0, $KJSetPos, null, true);
	Fade("�b/�G���G����", 0, 1000, null, true);
	Zoom("�b/�G���G����", 0, 250, 250, null, true);

	FadeDelete("�G��", 200, null, true);

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0015]
//�y�g���z
<voice name="�g��" class="�g��" src="voice/dm14/3000040a02">
"I didn't think I deserved to live anymore for killing my
 mother&.&.&. So&.&.&. I tried to kill myself with my sword&."

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

	CreatePlainSP("�G��", 18000);

	CreateTextureSP("�b/�G���G����", 500, Center, 576, "cg/st/l/st�g��_�o�[�T�N�\�I_think2_l.png");
	Request("�b/�G���G����", Smoothing);
	$YScale=ImageVertical("�b/�G���G����");
	$KJSetPos=576-($YScale/2)+40-317;
	Move("�b/�G���G����", 0, @0, $KJSetPos, null, true);
	Fade("�b/�G���G����", 0, 1000, null, true);
	Zoom("�b/�G���G����", 0, 250, 250, null, true);

	FadeDelete("�G��", 200, null, true);

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0020]
//�y�g���z
<voice name="�g��" class="�g��" src="voice/dm14/3000050a02">
"I thought that was the right thing to do&. That's what I
 thought&.&.&."

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\

	CreatePlainSP("�G��", 18000);

	CreateTextureSP("�b/�G���G����", 500, Center, 576, "cg/st/l/st�g��_�o�[�T�N�\�I_sad3_l.png");
	Request("�b/�G���G����", Smoothing);
	$YScale=ImageVertical("�b/�G���G����");
	$KJSetPos=576-($YScale/2)+40-317;
	Move("�b/�G���G����", 0, @0, $KJSetPos, null, true);
	Fade("�b/�G���G����", 0, 1000, null, true);
	Zoom("�b/�G���G����", 0, 250, 250, null, true);

	FadeDelete("�G��", 200, null, true);

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0021]
//�y�g���z
<voice name="�g��" class="�g��" src="voice/dm14/3000060a02">
"But I couldn't do it&. No matter what&.&.&. For some reason&, I thought of you&."


</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0022]
Koujaku's face warps&, as if trying to endure the pain&.


</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

	CreatePlainSP("�G��", 18000);

	CreateTextureSP("�b/�G���G����", 500, Center, 576, "cg/st/l/st�g��_�o�[�T�N�\�I_sad2_l.png");
	Request("�b/�G���G����", Smoothing);
	$YScale=ImageVertical("�b/�G���G����");
	$KJSetPos=576-($YScale/2)+40-317;
	Move("�b/�G���G����", 0, @0, $KJSetPos, null, true);
	Fade("�b/�G���G����", 0, 1000, null, true);
	Zoom("�b/�G���G����", 0, 250, 250, null, true);

	FadeDelete("�G��", 200, null, true);

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0023]
//�y�g���z
<voice name="�g��" class="�g��" src="voice/dm14/3000070a02">
"The thought of your smile from when we were kids made me
 start to cry&. It was bitterly painful&.&.&. I hated it&,
 it hurt&, but I couldn't have helped it&."

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\

	CreatePlainSP("�G��", 18000);

	CreateTextureSP("�b/�G���G����", 500, Center, 576, "cg/st/l/st�g��_�o�[�T�N�\�I_cry2_l.png");
	Request("�b/�G���G����", Smoothing);
	$YScale=ImageVertical("�b/�G���G����");
	$KJSetPos=576-($YScale/2)+40-317;
	Move("�b/�G���G����", 0, @0, $KJSetPos, null, true);
	Fade("�b/�G���G����", 0, 1000, null, true);
	Zoom("�b/�G���G����", 0, 250, 250, null, true);

	FadeDelete("�G��", 200, null, true);

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0024]
//�y�g���z
<voice name="�g��" class="�g��" src="voice/dm14/3000080a02">
"Even though I honestly wanted to die&.&.&. I wanted to live
 just as much&. I didn't know what I should've done&.&.&."

//�y�g���z
<voice name="�g��" class="�g��" src="voice/dm14/3000090a02">
"In the end&, I went back to the island&. Without being able
 to die&, the second worst option&.&.&. I just had to see you
 again&."

//�y�g���z
<voice name="�g��" class="�g��" src="voice/dm14/3000100a02">
"I thought something would change if I saw you&, that it'd
 be easier&."

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

	CreatePlainSP("�G��", 18000);

	CreateTextureSP("�b/�G���G����", 500, Center, 576, "cg/st/l/st�g��_�o�[�T�N�\�I_worry3_l.png");
	Request("�b/�G���G����", Smoothing);
	$YScale=ImageVertical("�b/�G���G����");
	$KJSetPos=576-($YScale/2)+40-317;
	Move("�b/�G���G����", 0, @0, $KJSetPos, null, true);
	Fade("�b/�G���G����", 0, 1000, null, true);
	Zoom("�b/�G���G����", 0, 250, 250, null, true);

	FadeDelete("�G��", 200, null, true);

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0030]
//�y�g���z
<voice name="�g��" class="�g��" src="voice/dm14/3000110a02">
"When we reunited&, I was astonished at how you grew up&, but your smiling face never changed&.&.&."

//�y�g���z
<voice name="�g��" class="�g��" src="voice/dm14/3000120a02">
"So I thought I'd be fine after all&. If I was here with you on the island&, I could wash away the memories and my 
 past&."

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\

	CreatePlainSP("�G��", 18000);

	CreateTextureSP("�b/�G���G����", 500, Center, 576, "cg/st/l/st�g��_�o�[�T�N�\�I_cry2_l.png");
	Request("�b/�G���G����", Smoothing);
	$YScale=ImageVertical("�b/�G���G����");
	$KJSetPos=576-($YScale/2)+40-317;
	Move("�b/�G���G����", 0, @0, $KJSetPos, null, true);
	Fade("�b/�G���G����", 0, 1000, null, true);
	Zoom("�b/�G���G����", 0, 250, 250, null, true);

	FadeDelete("�G��", 200, null, true);

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0032]
//�y�g���z
<voice name="�g��" class="�g��" src="voice/dm14/3000130a02">
"But it was impossible&. As much as I wished for peace&, I
 suddenly remembered&. That day splattered in blood&."

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\

	CreatePlainSP("�G��", 18000);

	CreateTextureSP("�b/�G���G����", 500, Center, 576, "cg/st/l/st�g��_�o�[�T�N�\�I_think_l.png");
	Request("�b/�G���G����", Smoothing);
	$YScale=ImageVertical("�b/�G���G����");
	$KJSetPos=576-($YScale/2)+40-317;
	Move("�b/�G���G����", 0, @0, $KJSetPos, null, true);
	Fade("�b/�G���G����", 0, 1000, null, true);
	Zoom("�b/�G���G����", 0, 250, 250, null, true);

	FadeDelete("�G��", 200, null, true);

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0033]
//�y�g���z
<voice name="�g��" class="�g��" src="voice/dm14/3000140a02">
"That bastard&, sneering&.&.&. even Ryuuhou showed up&."


</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

	CreatePlainSP("�G��", 18000);

	CreateTextureSP("�b/�G���G����", 500, Center, 576, "cg/st/l/st�g��_�o�[�T�N�\�I_think2_l.png");
	Request("�b/�G���G����", Smoothing);
	$YScale=ImageVertical("�b/�G���G����");
	$KJSetPos=576-($YScale/2)+40-317;
	Move("�b/�G���G����", 0, @0, $KJSetPos, null, true);
	Fade("�b/�G���G����", 0, 1000, null, true);
	Zoom("�b/�G���G����", 0, 250, 250, null, true);

	FadeDelete("�G��", 200, null, true);

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0040]
//�y�g���z
<voice name="�g��" class="�g��" src="voice/dm14/3000150a02">
"The moment I saw him I thought 'Yeah&, I can't just run 
 away now&.' I'd kill him and then myself&."

//�y�g���z
<voice name="�g��" class="�g��" src="voice/dm14/3000160a02">
"I knew then that nothing could stop me from killing him&."

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\

	CreatePlainSP("�G��", 18000);

	CreateTextureSP("�b/�G���G����", 500, Center, 576, "cg/st/l/st�g��_�o�[�T�N�\�I_think_l.png");
	Request("�b/�G���G����", Smoothing);
	$YScale=ImageVertical("�b/�G���G����");
	$KJSetPos=576-($YScale/2)+40-317;
	Move("�b/�G���G����", 0, @0, $KJSetPos, null, true);
	Fade("�b/�G���G����", 0, 1000, null, true);
	Zoom("�b/�G���G����", 0, 250, 250, null, true);

	FadeDelete("�G��", 200, null, true);

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0042]
//�y�g���z
<voice name="�g��" class="�g��" src="voice/dm14/3000170a02">
"Although I already decided that I'd go to hell anyway&, I
 decided that some revenge would be fine&." 

//�y�g���z
<voice name="�g��" class="�g��" src="voice/dm14/3000180a02">
"My wish to kill Ryuuhou was fufilled&. But my past couldn't change&, and this tattoo on my back will never disappear&,
 either&."

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\

	CreatePlainSP("�G��", 18000);

	CreateTextureSP("�b/�G���G����", 500, Center, 576, "cg/st/l/st�g��_�o�[�T�N�\�I_think_l.png");
	Request("�b/�G���G����", Smoothing);
	$YScale=ImageVertical("�b/�G���G����");
	$KJSetPos=576-($YScale/2)+40-317;
	Move("�b/�G���G����", 0, @0, $KJSetPos, null, true);
	Fade("�b/�G���G����", 0, 1000, null, true);
	Zoom("�b/�G���G����", 0, 250, 250, null, true);

	FadeDelete("�G��", 200, null, true);

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0044]
//�y�g���z
<voice name="�g��" class="�g��" src="voice/dm14/3000190a02">
"I'd rather have Ryuuhou's blood on my hands&, if any&. So I
 thought&.&.&. it'd be a good idea&."

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

	CreatePlainSP("�G��", 18000);

	CreateTextureSP("�b/�G���G����", 500, Center, 576, "cg/st/l/st�g��_�o�[�T�N�\�I_think2_l.png");
	Request("�b/�G���G����", Smoothing);
	$YScale=ImageVertical("�b/�G���G����");
	$KJSetPos=576-($YScale/2)+40-317;
	Move("�b/�G���G����", 0, @0, $KJSetPos, null, true);
	Fade("�b/�G���G����", 0, 1000, null, true);
	Zoom("�b/�G���G����", 0, 250, 250, null, true);

	FadeDelete("�G��", 200, null, true);

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0050]
//�y�g���z
<voice name="�g��" class="�g��" src="voice/dm14/3000200a02">
"I'd stop standing around and fall into sin&."


</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
	//TextBoxDelete(0);

	CreatePlainSP("�G��", 18000);
	Wait(16);

	$BTattooXPos="Center";
	$BTattooYPos=-809;
	CreateTextureEX("�b/�G�����h��", 502, $BTattooXPos, $BTattooYPos, "cg/ef/ef�����h���������05_l.png");
	CreateTextureEX("�b/�G�����h�l", 502, $BTattooXPos, $BTattooYPos, "cg/ef/ef�����h���������04_l.png");
	CreateTextureEX("�b/�G�����h�O", 502, $BTattooXPos, $BTattooYPos, "cg/ef/ef�����h���������03_l.png");
	CreateTextureEX("�b/�G�����h��", 502, $BTattooXPos, $BTattooYPos, "cg/ef/ef�����h���������02_l.png");
	CreateTextureEX("�b/�G�����h��", 502, $BTattooXPos, $BTattooYPos, "cg/ef/ef�����h���������01_l.png");
	Move("�b/�G�����h��*", 0, @0, @650, null, true);
	SetVertex("�b/�G�����h��*", center, bottom);
	Zoom("�b/�G�����h��*", 0, 0, 250, null, true);

	MoveCamera("�b", 0, 0, 70, 2000, DxlAuto, false);

	CreateSE("SE01a","se�[��_�h��_������01L");
	MusicStart("SE01a",2000,600,-500,800,null,true);
	$TattooNext="�b/�G�����h��";
	DrawEffect($TattooNext, 20000, "MiddleWave", 300, 20, DxlAuto);
	Fade($TattooNext, 500, 950, null, false);
	Move($TattooNext, 0, @0, @-500, DxlAuto, true);
	Move($TattooNext, 10000, @0, @-150, DxlAuto, false);
	Zoom($TattooNext, 800, 250, 250, Dxl3, false);

	MoveCamera("�b", 2000, 0, 90, 2000, Dxl1, false);
	FadeDelete("�G��", 1000, null, true);

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0051]
Koujaku hangs his head low as a clump of black
begins coiling up his legs&.

Koujaku&.&.&.

This was Koujaku's real past&.
The part he left out when he spoke with me&.

&.&.&.No&, he couldn't say it&.


</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\

	CreateSE("SE01b","se�[��_�h��_������01L");
	MusicStart("SE01b",2000,600,500,1200,null,true);
	$TattooNext="�b/�G�����h��";
	$TattooBack="�b/�G�����h��";
	DrawEffect($TattooNext, 5000, "MiddleWave", 300, 20, DxlAuto);
	Fade($TattooNext, 500, 950, null, false);
	Move($TattooNext, 5000, @0, @-650, Dxl3, false);
	Zoom($TattooNext, 800, 250, 250, Dxl3, false);
	//Fade($TattooBack, 8000, 0, null, false);
	FadeDelete("@�b/�G�����h��", 8000, null, false);

	MoveCamera("�b", 8000, 0, 55, 2000, Dxl1, false);

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0055]
How would you explain this kind of past?
How would the other person react?

Of course I'd worry since Koujaku and I have such a deep 
relationship&.

Inside of me&, I feel an intensely complicated feeling take over me&.

It can't be the shock from Koujaku's real past&.

How would I put it into words&.&.&. I don't know&.

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\

	SetVolumeEX("SE01a", 2000, 750, null);
	$TattooNext="�b/�G�����h�O";
	$TattooBack="�b/�G�����h��";
	DrawEffect($TattooNext, 5000, "MiddleWave", 500, 20, DxlAuto);
	Fade($TattooNext, 500, 950, null, false);
	Move($TattooNext, 5000, @0, @-650, Dxl3, false);
	Zoom($TattooNext, 800, 250, 250, Dxl3, false);
	FadeDelete("@�b/�G�����h��", 8000, null, false);

	MoveCamera("�b", 8000, 0, 20, 2000, Dxl1, false);

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0059a]
With such a heavy past&, how could you have listened to 
what frivolous things people would say?

Koujaku looks at me like he's given up on everything&.

A black tattoo crawls up his arms&, even reaching his 
stomach&.

Koujaku&.&.&. accepts the tattoo eating at him&.

&.&.&.No&.

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

	SetVolumeEX("SE01b", 2000, 900, null);
	$TattooNext="�b/�G�����h�l";
	$TattooBack="�b/�G�����h�O";
	DrawEffect($TattooNext, 5000, "MiddleWave", 700, 20, DxlAuto);
	Fade($TattooNext, 500, 950, null, false);
	Move($TattooNext, 5000, @0, @-650, Dxl3, false);
	Zoom($TattooNext, 800, 250, 250, Dxl3, false);
	FadeDelete("@�b/�G�����h�O", 8000, null, false);

	MoveCamera("�b", 8000, 0, -15, 2000, Dxl1, false);

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0060]
Koujaku has hurt countless people&, and he even lost his 
mother beacause of it&.

But this isn't actually Koujaku's fault&.
It's the fault of the conspiracy between Ryuuhou and Toue 
with that tattoo&.

Even if I told that to Koujaku&, he'd still never stop 
blaming himself&.

You can't change what you've done&.
It's all what happened&.


</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\

	SetVolumeEX("SE01a", 2000, 900, null);
	$TattooNext="�b/�G�����h��";
	$TattooBack="�b/�G�����h�l";
	DrawEffect($TattooNext, 5000, "MiddleWave", 1000, 20, Dxl3);
	Fade($TattooNext, 500, 1000, null, false);
	Move($TattooNext, 5000, @0, @-650, Dxl3, false);
	Zoom($TattooNext, 800, 250, 250, Dxl3, false);
	FadeDelete("@�b/�G�����h�l", 8000, null, false);

	MoveCamera("�b", 8000, 0, -50, 2000, Dxl1, false);

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0064]
&.&.&.But&.
I don't want to lose Koujaku&.

Be it because of my ego&, or anything else&.
I can't sit here and watch Koujaku die silently&.

Koujaku is still caged by Ryuuhou&, his tattoo&, his 
memories&.

His wounds are too deep&.&.&.

He even sheds blood now&, and Koujaku can't handle it alone&.

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

	CreateColorEX("�G������", 9000, "000000");

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0070a]
If I leave him alone&, it'll swallow him whole&.


</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\

//�������u���o�F����ɃN���b�N�҂�����܂����A��肠���������ĉ������v

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0070b]
So&,<k><?>
 before that happens&.

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\

	SetVolumeEX("SE*", 200, 1, null);
	SetVolumeEX("@dm*", 200, 0, null);
	Fade("�G������", 200, 1000, null, true);
	MoveCamera("�b", 0, 0, 0, 1000, Dxl1, false);

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0070c]
�@�\�\Destroy&.


</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
	TextBoxDelete(0);

	Delete("�G������");

//�������u���o�F�����t�̗U�f�v
	CreateColorEX("�G�F��", 12000, "000000");
	TemptationNoizSet("�G�������t�U�f������",11102);
	TemptationAobaSet("�G�������t�U�f",11100,-256,-231,"cg/ev/m/ev900�����P�l�̑��t_m.jpg",1000,1000);

	CreateColorEX("�G�������t�U�f���B", 11110, "000000");
	DrawTransition("�G�������t�U�f���B", 0, 0, 500, 100, null, "cg/data/slide_05_00_0.png", true);

//��������A�Ɠ����ɂ�
//�����Ƀ��x���F�R
	//���ɃG�t�F�N�g(0)
$HALevel=3;
	HAFade(9010, 0,true);
	//Wait(500);

	Fade("�G�������t�U�f���B", 0, 1000, null, true);
	Fade("�G�������t�U�f", 0, 1000, null, true);
	Position("@�G�������t�U�f", $TANx1, $TANy1);
	TemptationNoizFade("�G�������t�U�f������",0,null,true);
	TemptationAobaIn("�G�F��");
	TemptationAobaOut(150,false);

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0072]
�@�\�\�\�\�@Destroy�@�\�\�\�\


</PRE>
	SetTextM();
	TypeBeginF(150);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

	Fade("�G�F��", 0, 1000, null, true);
	TemptationAobaSet("�G�������t�U�f",11100,-501,30,"cg/ev/l/ev900�����P�l�̑��t_l.jpg",2000,2000);

	Fade("@�G�������t�U�f*", 0, 0, null, true);
	Fade("�G�F��", 300, 0, null, true);


//�����Ƀ��x���F�S
//��������A������A�Ɠ����ɂ�
	//���ɃG�t�F�N�g(0)
$HALevel=4;
	HAFade(9010, 0,true);
	Wait(50);
	//���ɃG�t�F�N�g(0)
	HAFade(9010, 0,false);
	//Wait(50);

	Fade("�G�F��", 0, 1000, null, true);
	Fade("@�G�������t�U�f*", 0, 1000, null, true);
	Fade("@�G�������t�U�f���B", 0, 0, null, true);
	Position("@�G�������t�U�f", $TANx1, $TANy1);
	TemptationAobaIn("�G�F��");
	TemptationAobaOut(150,false);

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0073]
�@�\�\�\�\�@Destroy him�@�\�\�\�\


</PRE>
	SetTextM();
	TypeBeginF(150);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

	TemptationDelete("@�G�������t�U�f���B");
	FadeDelete("�G�F��", 1000, null, true);

	SetVolumeEX("SE01*", 4000, 400, null);

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0074]
�@All I can do with Scrap is 'Destroy'&.

So&, I'll do just that&.
I'll destroy the wounds entrapping Koujaku&.

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
	TextBoxDelete(0);

	HAFade(9010, 0,true);
	Wait(50);

	Fw("fw���t_�ʏ�_pinch");
//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0080]
//�y���t�z
<voice name="���t" class="���t" src="voice/dm14/3000210a01">
"&.&.&.&.&."


</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
	TextBoxDelete(0);

	CreateSE("SE01","se�l��_����_����02");
	MusicStart("SE01",0,700,0,800,null,true);
	MoveCamera("�b", 3000, @0, -65, 3000, DxlAuto, true);
	SetVolumeEX("SE01", 300, 0, null);

	Wait(300);

	CreateSE("SE02","se�l��_����_����01");
	MusicStart("SE02",0,700,0,1000,null,false);

	CreateTextureEX("�b/�G���G����", 500, Center, 576, "cg/st/l/st�g��_�o�[�T�N�\�I_sad2_l.png");
	Request("�b/�G���G����", Smoothing);
	$YScale=ImageVertical("�b/�G���G����");
	$KJSetPos=576-($YScale/2)+40-317;
	Move("�b/�G���G����", 0, @0, $KJSetPos, null, true);
	Zoom("�b/�G���G����", 0, 250, 250, null, true);
	Fade("�b/�G���G����", 600, 1000, null, true);
	Delete("�b/�G���G����");

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0081]
I walk up to Koujaku and grab his shoulders with both of 
my hands&.

He slowly raises his head&, and looks at me with pitiful 
eyes&.


</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

	Fw("fw���t_�ʏ�͍s�g_serious");
//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0090]
//�y���t�z
<voice name="���t" class="���t" src="voice/dm14/3000220a01">
"Koujaku&.&.&. Don't give in!"

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\

	TextBoxDelete(0);
	SetVolumeEX("SE*", 300, 0, null);

	CreateSE("SE00","se�[��_����_�͑��t01");
	Request("SE00", Lock);
	MusicStart("SE00",0,700,0,1000,null,false);

	CreateColorEXadd("�G�F��", 5000, "FFFFFF");
	Fade("�G�F��", 300, 1000, null, true);

	Wait(1000);

//�����t�@�C��["dm1440scr.nss"]

}
