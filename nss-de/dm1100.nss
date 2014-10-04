//<continuation number="30">
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


scene dm1100.nss_MAIN
{

	//CoilMailAdd("���[���i�b�g��","�l��","����",�Y�t�L�薳��,�J���L�薳��)
	CoilMailAdd("hime0270","Captive Princess","Please save me",true,false);
	CoilMailAdd("hime0280","Captive Princess","Please save me",true,false);
	CoilMailAdd("hime0290","Captive Princess","Please save me",true,false);
	CoilMailAdd("dm0480a","Captive Princess","Please save me",true,true);
	CoilMailAdd("dm1030a","Haga-san","Platinum Jail Secret Pathway",true,true);
	CoilMailAdd("dm1080a","Koujaku","(No Subject)",false,true);


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
	#bg302051_5_�O���b�^�[�G���g�����X=true;
	#bg302021_5_�O���b�^�[����=true;
	#bg302041_5_�O���b�^�[�L��=true;

	//�����[�g�t���O�A�I�����A����GameName
	$PreGameName = $GameName;
	$GameName = "dm1110.nss";

}


scene dm1100.nss
{

	//���V�[���̓��ɕK���L�q
	$�X�N���v�g�o�[�W���� = " $Revision:  $";
	$�\���� = ModuleFileName();
	$�\���� = $SYSTEM_present_process;
	SystemInit();


//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\

	PrintBG("��w�i", 30000);

	CreateColorSP("�G�F��", 5000, "000000");
	OnBG(10,"bg302051_5_�O���b�^�[�G���g�����X");
	FadeBG(0,true);
	Delete("��w�i");

	CreateTextureSP("�G�w�i", 100, Center, -200, "cg/bg/m/bg302051_5_�O���b�^�[�G���g�����X_m.jpg");
	CreateTextureSP("�G�w�i��", 200, Center, 0, "cg/bg/m/bg302051_5_�O���b�^�[�G���g�����X_m.jpg");
	CreateColorEXadd("�G�w�i��", 3000, "WHITE");
	Fade("�G�w�i��", 0, 1000, null, true);

	Move("�G�w�i��", 3000, @156, @0, null, false);

	FadeDelete("�G�F��", 500, null, true);
	FadeDelete("�G�w�i��", 1000, null, false);

	Wait(2000);

	Move("�G�w�i", 3000, @-156, @0, null, false);
	FadeDelete("�G�w�i��", 500, null, true);

	Wait(2000);

	FadeDelete("�G�w�i", 500, null, true);

	Wait(500);

	SoundPlay("@dm002",0,450,true);

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0010]
I walk through the doorway and the inside is astonishing&.

It's different from what I thought it would be&. The 
interior has a classical feeling to it&.

There's a large clock&, a table&, a sofa&, and all the 
furniture looks completely untouched&.

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

	Fw("fw���t_�ʏ�_shock");
//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0013]
//�y���t�z
<voice name="���t" class="���t" src="voice/dm11/0000010a01">
"This is awesome&.&.&."

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0014]
I go up the staircase and check out the second floor&.

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
	TextBoxDelete(0);

	OnBG(10,"bg302021_5_�O���b�^�[����");
	FadeBG(1000,true);

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0015]
The stairs to the second floor go up to a living room&, 
where there's a TV&, another sofa&, and a small bar counter&.

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
	TextBoxDelete(0);

	OnBG(10,"bg302041_5_�O���b�^�[�L��");
	FadeBG(1000,true);

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0016]
Down the long hallway are some rooms&. Most likely bedrooms&.

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
	TextBoxDelete(0);

	CreateColorEX("�G����", 25000, "BLACK");
	Fade("�G����", 500, 1000, null, true);

	OnBG(10,"bg302051_5_�O���b�^�[�G���g�����X");
	FadeBG(0,true);
	CreateTextureSP("�G�w�i", 100, Center, -200, "cg/bg/m/bg302051_5_�O���b�^�[�G���g�����X_m.jpg");

	CreateSE("SE01","se�l��_����_����01");
	MusicStart("SE01",0,700,0,1000,null,false);

	Move("�G�w�i", 500, @0, @-50, Dxl1, false);
	Fade("�G�w�i", 500, 1000, null, true);
	FadeDelete("�G����", 500, null, true);

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0017]
I'm done checking out the second floor and go back 
downstairs&, and sit on the sofa&.

I put all the fast food I bought on the table&.

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0020]
I thought that the food here would be really expensive&, 
but it actually isn't that bad&.

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

	CreateSE("SE01","se�[��_��_�܋���01");
	MusicStart("SE01",0,700,0,1000,null,false);

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0021]
Now&, I wonder what it'll taste like&.

I take one bite of a hamburger&.

&.&.&.Mm&.
The meat's texture is different&.

I can't describe it exactly&, but it tastes like it's 
higher quality&.&.&. not that it makes a difference to me&.

With just one bite&, I miss the taste of the crappy 
hamburgers in the Old Resident District&.

While munching on my burger&, I check my Coil&.

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
	TextBoxDelete(0);

//	CreateSE("SE01","se����_�R�C��_���쉹02");
//	MusicStart("SE01",0,700,0,1000,null,false);

	//���@�R�C�����o�ݒu�P
	CoilIntoSet();
	//���@�R�C�����o�ݒu�Q
	CoilStartSet();
	//���B���[�����X�g�ݒu�wCoilMListSet(X�ʒu,Y�ʒu)�x
	CoilMListSet(344,90);

	//���@�R�C�����o�\��
	CoilStartFade();
	//���B���[�����X�g�\���P�i�ʏ�\���j
	CoilMListFade();
	//���R�C���҂�
	CoilWait();

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0022]
While I was waiting in line to get my food&, I sent Koujaku a message&, but he still hasn't replied&.

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

	//���w�ėp�x�R�C�����[�P�wCoilDelete("�w��̃R�C����",�b��,���������X,���������Y)�x//�����W�w��͐�΂̂�
	CoilDelete("CoilMList",300,500,370);
	//���R�C���҂�
	CoilWait();

	Fw("fw���t_�ʏ�_cranky");
//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0028]
//�y���t�z
<voice name="���t" class="���t" src="voice/dm11/0000020a01">
"What's taking him?"

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0029]
I flash back to the image of Koujaku with his back to me&, 
walking away with a girl in each arm and have iffy 
feelings about it&.

I want to speak with him about the special commemorative 
event&, too&.&.&.

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

	Fw("fw���t_�ʏ�_cranky3");
//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0030]
//�y���t�z
<voice name="���t" class="���t" src="voice/dm11/0000030a01">
"You aren't reliable and just mess around all the time&.
 Or something like that&, the idiot&."

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0040]
I grumble then silently clean my food off the table&.

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
	TextBoxDelete(0);

	SetVolumeEX("@dm*", 2000, 0, null);
	ClearFadeAll(1000, true);
	Wait(1000);

//�����t�@�C��["dm1110.nss"]

}
