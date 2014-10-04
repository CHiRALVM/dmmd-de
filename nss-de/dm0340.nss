//<continuation number="150">
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


scene dm0340.nss_MAIN
{

	//CoilMailAdd("���[���i�b�g��","�l��","����",�Y�t�L�薳��,�J���L�薳��)
	CoilMailAdd("chara0020","Koujaku","This Sunday",false,true);
	CoilMailAdd("chara0030","Mizuki","How are you?",false,true);
	CoilMailAdd("chara0040","Granny","Dinner",false,true);
	CoilMailAdd("chara0050","Koujaku","About then",false,true);
	CoilMailAdd("hime0010","Captive Princess","Please save me",true,true);
	CoilMailAdd("spm0040","������","New Allmate models soon for sale! Pre-orders will begin tomorrow!",true,true);



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
	#bg104001_1_���t��O�ʂ�=true;
	#bg102021_5_���}�n����=true;

	//CoilMailAdd("���[���i�b�g��","�l��","����",�Y�t�L�薳��,�J���L�薳��)
	CoilMailAdd("dm0340a","Koujaku","(No Subject)",false,true);

	//�����[�g�t���O�A�I�����A����GameName
	$PreGameName = $GameName;
	$GameName = "dm0350.nss";

}


scene dm0340.nss
{

	//���V�[���̓��ɕK���L�q
	$�X�N���v�g�o�[�W���� = " $Revision:  $";
	$�\���� = ModuleFileName();
	$�\���� = $SYSTEM_present_process;
	SystemInit();


//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\

	PrintBG("��w�i", 30000);

//�e�F�����̔w�i�v����
	CreateTextureSP("�G�w�i100", 100, -872, 462, "cg/bg/l/bg101031_1_���Z����ʂ藠�H�n�g���J_l.jpg");
	Zoom("�G�w�i100", 0, 1800, 1800, null, true);
	Request("�G�w�i100", Smoothing);

	CreateColor("�G���o�F", 2000, 0, 0, 1024, 768, "624a2b");
	SetAlias("�G���o�F","�G���o�F");
	Request("�G���o�F", OverlayRender);

	SoundPlay("@dm012",0,450,true);

	CreateTextureSPmul("�G���o����", 3000, Center, Middle, "cg/ef/effi��z01.jpg");

	Wait(1000);

	FadeDelete("��w�i", 2000, null, true);

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0010]
The next morning I carried Granny on my back again and 
took her to the neighboring hospital&.

I thought I'd take the day off from my part-time job just 
in case&, and called Haga-san&.

Even though it was called a hospital&, this is the Old 
Resident District&, so it meant the facilities were old and 
small&, there were few doctors&, and it was always crowded&.

It was wearing down here and there&, and it couldn't be 
complimented on how sanitary it was&, either&. But all the 
people in the hospital were kind&.

They knew Granny from earlier and when I called&, they said 
we could come immediately&.

Granny hated going to the hospital and always said she 
could take care of herself&, but today she obediently 
underwent the medical examination&.

Perhaps she had been enduring the pain out of pride&.

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
	TextBoxDelete(0);

	OnBG(10,"bg104001_1_���t��O�ʂ�");
	FadeBG(0,true);

	FadeDelete("�G�w�i100", 1000, null, true);

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0011]
They said her hip wasn't that bad and it could be treated 
at home&, so I carried Granny home after the examination&.

When I laid Granny on a futon and sighed&, she said she'd 
only be sleeping so I should go to my job already&.

I was still worried&, but once Granny begins speaking&, she 
won't listen to anything&.

When I talked with Haga-san on the phone&, and he said it 
was okay if I could come as soon as I could for now&, and 
I decided to go the shop&.

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
	TextBoxDelete(0);

	SetVolumeEX("@dm*", 2000, 0, null);

	CreateColorEX("�G�F��", 5000, "000000");
	Fade("�G�F��", 1000, 1000, null, true);

	OnBG(10,"bg102011_5_���}�X��");
	FadeBG(0,true);
	Delete("�G��*");

	Wait(1000);

	FadeDelete("�G�F��", 1000, null, true);

	SoundPlay("@dm001",0,450,true);


//���w�k���R�C���m�F�x

//���R�C���̃��[�����M
	CreateSE("SE01","se����_�R�C��_��M���t");
	MusicStart("SE01",0,700,0,1000,null,true);

	Wait(1500);
	SetVolumeEX("SE*", 300, 0, null);

	//���@�R�C�����o�ݒu�P
	CoilIntoSet();
	//���@�R�C�����o�ݒu�Q
	CoilStartSet();
	//���A���[��NEW�ݒu�wCoilNewSet(X�ʒu,Y�ʒu)�x
	CoilNewSet(400,125);

	//���@�R�C�����o�\��
	CoilStartFade();
	//���A���[��NEW�\��
	CoilNewFade();

	//�҂�
	CoilWait();

//�e�F�R�C�����o�͌��
	//���B���[�����X�g�ݒu�wCoilMListSet(X�ʒu,Y�ʒu)�x
	CoilMListSet(300,100);

	//���B���[�����X�g�\���P�i�ʏ�\���j
	//CoilMListFade();
	//���B���[�����X�g�\���Q�i���[��NEW����̑J�ځj
	CoilMListFade_New();

	//���B�V�K���[���ǉ�
	CoilMailAdd2("dm0340a","Koujaku","(No Subject)",false);

	//�҂�
	CoilWait();

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0020]
I feel uneasy as I go into the shop&, and eventually I 
receive a message&.

It's from Koujaku&.

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
	TextBoxDelete(0);

	CoilMailSet("dm0340a",270,150);

	//���C���[���\���P�i�ʏ�\���j
	//CoilMailFade();
	//���C���[���\���Q�i���[�����X�g����̑J�ځj�wCoilMailFade_MList("���[���i�b�g��",�b��)�x
	CoilMailFade_MList("dm0340a",500);

	//�҂�
	CoilWait();

//	Wait(3000);

//���R�C��_���[���J��
//���R�C�����[���{�b�N�X�\��
/*
//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0021]
(No Subject)
�{���F�˃i�b�g���Fdm0340a
I saw Mizuki&, but something seemed strange&. When I talked to him he kept spacing out and wouldn't react&. If he has any problems&, I think you'd be better off listening instead of me&.
If you have time&, contact him&. I'll come talk about the details later&.

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);
</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
	TextBoxDelete(0);
*/
//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\

	Fw("fw���t_�ʏ�_shock2");
<PRE @box0>
[text0023]
//�y���t�z
<voice name="���t" class="���t" src="voice/dm03/4000010a01">
"Mizuki&.&.&."

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

	DeleteFw();

//	Wait(500);

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0030]
Something must be strange if Koujaku even sent me a 
message about it&.

Maybe he really is overdoing it&.&.&.

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
	TextBoxDelete(0);

	CoilAllDelete(300,200,370);
	//���R�C���҂�
	CoilWait();

	Wait(500);

	CreatePlainSP("�G��", 5000);
	CreateTextureSP("�G�w�i", 100, 0, -200, "cg/bg/m/bg102021_5_���}�n����_m.jpg");
	SetShade("�G�w�i", LIGHT);

	FadeDelete("�G��", 500, null, true);

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0031]
I leave the counter&, walk towards the toilet&, and call 
Mizuki&.

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
	TextBoxDelete(0);

	SetVolumeEX("@dm001", 1000, 10, null);

//	Wait(1000);

//���w�k���R�C���m�F�x

//���R�C��_�d�b�R�[����

	//���@�R�C�����o�ݒu�P
	CoilIntoSet();
	//���@�R�C�����o�ݒu�Q
	CoilStartSet();
	//���G�R�C���d�b�ݒu
	CoilPhone_OutcallSet(368,30,"dm0340","Mizuki",false);

	//���R�C�����M
	//CreateSE("coilsound_phone_call","se����_�R�C��_���M���t");
	//MusicStart("coilsound_phone_call",0,700,0,1000,null,true);

	//���@�R�C�����o�\��
	CoilStartFade();
	//���G�R�C���d�b�\��
	CoilPhone_CallFade();

	//���R�C���҂�
	CoilWait();

	Wait(2000);

	Fw("fw���t_�ʏ�_think");
//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0032]
//�y���t�z
<voice name="���t" class="���t" src="voice/dm03/4000020a01">
"&.&.&.&.&."

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
	TextBoxDelete(0);

//�R�C��_�R�[�����~�܂�

	//���G�R�C���d�b�o��
	CoilPhone_CallOn(@0,@0,"�s��");

	Fw("fw���t_�ʏ�_shock");
//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0035]
//�y���t�z
<voice name="���t" class="���t" src="voice/dm03/4000030a01">
"Hello? Mizuki?"

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

	//���G�R�C���d�b��
	CoilPhone_Face(@0,@0,"st�~�Y�L_�ʏ�_normal");

//�����H�F�R�C���ʘb
//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0033]
//�y�~�Y�L�z
<voice name="�~�Y�L" class="�~�Y�L" src="voice/dm03/4000040b06">
"&.&.&.Aoba&, huh? What's the matter?"

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
	TextBoxDelete(0);

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0034]
Good&, he answered the phone&. 
I feel a little relieved&.

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

	Fw("fw���t_�ʏ�_smile");
//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0040]

{
	SetVolumeEX("@dm001", 3000, 450, null);
}
//�y���t�z
<voice name="���t" class="���t" src="voice/dm03/4000050a01">
"Ah&, nothing&, I don't really have anything important to
 say&, I just wanted to talk&."

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

	//���G�R�C���d�b��
	CoilPhone_Face(@0,@0,"st�~�Y�L_�ʏ�_smile");

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0041]
//�����H�F�R�C���ʘb
//�y�~�Y�L�z
<voice name="�~�Y�L" class="�~�Y�L" src="voice/dm03/4000060b06">
"What&, we just saw each other yesterday&. You're a weird
 guy&."

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

	Fw("fw���t_�ʏ�_confuse");
//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0042]
//�y���t�z
<voice name="���t" class="���t" src="voice/dm03/4000070a01">
"Nn&.&.&. Naah&. I was just wondering if you're okay&."

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

	//���G�R�C���d�b��
	CoilPhone_Face(@0,@0,"st�~�Y�L_�ʏ�_normal");

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0043]
//�����H�F�R�C���ʘb
//�y�~�Y�L�z
<voice name="�~�Y�L" class="�~�Y�L" src="voice/dm03/4000080b06">
"Course I am&. Why?"

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

	Fw("fw���t_�ʏ�_normal");
//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0044]
//�y���t�z
<voice name="���t" class="���t" src="voice/dm03/4000090a01">
"Because when we met yesterday&, I thought you didn't seem
 so hot&. Just a little&, though&."

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

	//���G�R�C���d�b��
	CoilPhone_Face(@0,@0,"st�~�Y�L_�ʏ�_laugh");

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0050]
//�����H�F�R�C���ʘb
//�y�~�Y�L�z
<voice name="�~�Y�L" class="�~�Y�L" src="voice/dm03/4000100b06">
"So you called because you were worried&. Thanks&. But I'm
 okay&."

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

	Fw("fw���t_�ʏ�_serious");
//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0051]
//�y���t�z
<voice name="���t" class="���t" src="voice/dm03/4000110a01">
"Really?"

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

	//���G�R�C���d�b��
	CoilPhone_Face(@0,@0,"st�~�Y�L_�ʏ�_normal");

//�����H�F�R�C���ʘb
//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0052]
//�y�~�Y�L�z
<voice name="�~�Y�L" class="�~�Y�L" src="voice/dm03/4000120b06">
"Yeah&."

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

	Fw("fw���t_�ʏ�_normal");
//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0053]
//�y���t�z
<voice name="���t" class="���t" src="voice/dm03/4000130a01">
"Alright&. Well then&, let's talk some more another time&."

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);


//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0054]
//�����H�F�R�C���ʘb
//�y�~�Y�L�z
<voice name="�~�Y�L" class="�~�Y�L" src="voice/dm03/4000140b06">
"Right&. Bye then&."

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
	TextBoxDelete(0);

//���r�d�F�R�C��_�ʘb�I��
//�����o�F�R�C��_�ʘb�I��

	//���G�R�C���d�b�I��
	CoilPhone_End();
	//���R�C���҂�
	CoilWait();

	Wait(1000);

	//���w�ėp�x�R�C�����[�P�wCoilAllDelete(�b��,���������X,���������Y)�x//�����W�w��͐�΂̂�
	//CoilAllDelete(300,-50,370);
	//���w�ėp�x�R�C�����[�P�wCoilDelete("�w��̃R�C����",�b��,���������X,���������Y)�x//�����W�w��͐�΂̂�
	CoilDelete("CoilPhone",300,-50,370);
	//���R�C���҂�
	CoilWait();

	Fw("fw���t_�ʏ�_think");
//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0060]
//�y���t�z
<voice name="���t" class="���t" src="voice/dm03/4000150a01">
"&.&.&.&.&."

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

	DeleteFw();
	FadeDelete("�G�w�i", 500, null, true);

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0061]
After the call&, I sigh and head back to the counter&.

There was no life in Mizuki's voice after all&.

He said he was okay&, so I didn't listen too deeply&, but&.&.&.

On top of Granny falling down yesterday&, my worries just 
keep growing&.

I hope they're just imaginary fears&.&.&.

I spend the rest of the afternoon worrying about Mizuki 
and Granny&, unable to concentrate on work&.

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
	TextBoxDelete(0);

	SetVolumeEX("@dm001", 2000, 0, null);
	ClearFadeAll(2000, true);
	Wait(1000);

//�����t�@�C��["dm0350.nss"]

}
