//<continuation number="40">
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


scene dm5260.nss_MAIN
{
	//CoilMailAdd("���[���i�b�g��","�l��","����",�Y�t�L�薳��,�J���L�薳��)
	CoilMailAdd("hime0250","Captive Princess","Please save me",true,false);
	CoilMailAdd("hime0270","Captive Princess","Please save me",true,false);
	CoilMailAdd("hime0280","Captive Princess","Please save me",true,false);
	CoilMailAdd("hime0290","Captive Princess","Please save me",true,false);
	CoilMailAdd("dm0480a","Captive Princess","Please save me",true,true);
	CoilMailAdd("dm1030a","Haga-san","Secret Path to Platinum Jail",true,true);

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
	#evf06���]�ɂ����鋌�l����a=true;

	//�����[�g�t���O�A�I�����A����GameName
	$PreGameName = $GameName;
	$GameName = "dm5270.nss";

}


scene dm5260.nss
{

	//���V�[���̓��ɕK���L�q
	$�X�N���v�g�o�[�W���� = " $Revision:  $";
	$�\���� = ModuleFileName();
	$�\���� = $SYSTEM_present_process;
	SystemInit();


//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\

	PrintBG("��w�i", 30000);

	OnBG(10,"bg302011_5_�O���b�^�[����01");
	FadeBG(0,true);

	FadeDelete("��w�i", 1000, null, true);

	Wait(500);

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0010]
In the end&, morning came and I didn't get very much sleep&.

I pull up my sluggish body and leave the room&.

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
	TextBoxDelete(0);

	OnBG(10,"bg302021_5_�O���b�^�[����");
	FadeBG(500,true);

	CreateSE("SE01","se����_�e���r_�I��");
	MusicStart("SE01",0,700,0,1000,null,false);

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0011]
When I go sit on the living room sofa and watch TV&, I see 
coverage of the event still on the screen&.

A reporter describes a showy parade that had just passed 
through&, and then the image changes completely&.

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
	TextBoxDelete(0);

	CreatePlainSP("�G��", 5000);

	CreateTextureEXadd("�G������", 2000, Center, Middle, "cg/ef/effi�e���r��ʗp���ʃt�B���^�[.jpg");
	CreateTextureSP("�G���w�i1000", 1000, -230, 0, "cg/bg/m/bg101011_1_���Z����ʂ�\_m.jpg");
	Fade("�G������", 0, 300, null, true);

	FadeDelete("�G��", 500, null, true);

	Wait(300);

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0012]
What comes on the screen causes all of my drowsiness to 
disappear&.

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

	Fw("fw���t_�ʏ�_shock2");
//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0014]
//�y���t�z
<voice name="���t" class="���t" src="voice/dm52/6000000a01">
"The Old Resident District&.&.&.!"


</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0015]
The scene&, plus its odd&, cheerful narration&, is even 
stranger than how it was yesterday&.

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
	TextBoxDelete(0);

	SetVolumeEX("@dm*", 1000, 0, null);

//�e�F�ȉ��v���Z�X�����l����
//���v���`�i�E�W�F�C�����΁I�̊��������^

	CreateColorEX("�G�F��", 6000, "000000");
	Fade("�G�F��", 500, 1000, null, true);
	Delete("�G������");
	Delete("�G���w�i1000");

	CreateTextureSPadd("�G�e���r�g", 1500, Center, Middle, "cg/ef/effi�e���r��ʗp���ʃt�B���^�[.jpg");
	CreateTextureEX("�G���o", 1501, Center, Middle, "cg/ev/l/evf07�v���`�i�W�F�C���Ί�_l.jpg");

	dm5220_TV_pro2(1000,4);
	dm5220_TV_pro(500,2);

	Move("@�UPro*", 0, 0, @0, null, true);

	Fade("�G�e���r�g", 0, 300, null, true);

	DrawEffect("�G���o", 40000, "MiddleWave ", 0, 1000, null);

	BezierMove("@�UPro*", 11000, (0,-144){-128,0}{-256,-144}{-384,-288}(-512,-144), null, false);

	CreateSE("SE01","se��_�K��_�����01L");
	MusicStart("SE01",3000,700,0,1000,null,true);

	Wait(500);

	Fade("�G�F��", 500, 0, null, true);

	Wait(1000);

	SetVolumeEX("SE*", 500, 1200, null);
	Fade("�G���o", 500, 1000, null, true);
	Wait(500);
	SetVolumeEX("SE*", 500, 700, null);
	Fade("�G���o", 500, 0, null, true);

	Wait(500);

	Move("�G���o", 0, -800, 0, null, true);
	SetVolumeEX("SE*", 500, 1200, null);
	Fade("�G���o", 500, 1000, null, true);
	Wait(500);
	SetVolumeEX("SE*", 500, 700, null);
	Fade("�G���o", 500, 0, null, true);

	Wait(500);

	Move("�G���o", 0, -600, -500, null, true);
	SetVolumeEX("SE*", 500, 1200, null);
	Fade("�G���o", 500, 1000, null, true);
	Wait(500);
	SetVolumeEX("SE*", 500, 700, null);
	Fade("�G���o", 500, 0, null, true);

	Wait(500);

	SetVolumeEX("SE*", 2000, 0, null);
	Fade("�G�F��", 500, 1000, null, true);

	Delete("�UPro*");
	Delete("�G��*");

	SoundPlay("@dm006",0,450,true);

	Wait(500);

	FadeDelete("�G�F��", 500, null, true);

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0019]
Everyone&.&.&. is smiling&.

They're not jumping around in joy&, but on their faces are 
the same smiles&, as if they'd all been given similar masks&.

And their eyes&. Their eyes are empty&.

Eyes looking nowhere&, smiles frozen on their faces&.

On the screen&, people are yelling "Long live Platinum 
Jail!" and a reporter is going on about how "warm of a 
reception that the Old Resident District is giving"&.

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

	CreatePlainSP("�G��", 5000);

	Delete("�G�e*");
	Delete("�G��*");
	Delete("@�v��*");
	Delete("@�U*");
	Delete("@Pro*");

	FadeDelete("�G��", 500, Dxl1, true);

	Fw("fw���t_�ʏ�_hard2");
//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0020]
//�y���t�z
<voice name="���t" class="���t" src="voice/dm52/6000010a01">
"This is complete bullshit&.&.&."


</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0021]
All of this&.&.&.
It's exactly how it was yesterday&.

Is it because of that music Haga-san was talking about?

Haga-san&, Granny&, everyone&.&.&.
Are they really all right&.&.&.!?

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
	TextBoxDelete(0);

//�e�F�R�C�����o�͌��

	CreateSE("SE01","se����_�R�C��_���쉹01");
	MusicStart("SE01",0,700,0,1000,null,false);

	//���@�R�C�����o�ݒu�P
	CoilIntoSet();
	//���@�R�C�����o�ݒu�Q
	CoilStartSet();
	//���B���[�����X�g�ݒu�wCoilMListSet(X�ʒu,Y�ʒu)�x
	CoilMListSet(346,47);


	//���@�R�C�����o�\��
	CoilStartFade();
	//���B���[�����X�g�\���P�i�ʏ�\���j
	CoilMListFade();
	//���R�C���҂�
	CoilWait();

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0022]
I check my Coil&, nearly passing out from worry&.

As I expected&, I don't find any replies to the messages I 
sent out yesterday&.

But I try to call someone anyway&.

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
	TextBoxDelete(0);

//���d�b�q����Ȃ���

//	CreateSE("SE01","se����_�R�C��_�ʐM�Ւf01");
//	MusicStart("SE01",0,700,0,1000,null,false);
//	Wait(500);

	//���G�R�C���d�b�ݒu
	CoilPhone2_OutcallSet(368,30,"dm5260","Granny",false);
	//CoilPhone2_IncallSet(200,50,"ko0170","Delivery Works",false);

	//���w�ėp�x�R�C���ړ��Q�wCoilMove2(�ړ��p�^�[��,"�w��̃R�C����",����,�ړ�X,�ړ�Y,�e���|,�҂�)�x//���ړ��͐�΂̂�
	CoilMove2(2,"CoilMList",500,600,150,Dxl1,false);

	//���G�R�C���d�b�\��
	//�ŏ�����G���[
	$coilphone2Error=true;
	CoilPhone2_CallFade();
	//���R�C���҂�
	CoilWait();

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0030]
&.&.&.Not working&.
It really won't connect&.

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
	TextBoxDelete(0);

	//���w�ėp�x�R�C�����[�P�wCoilAllDelete(�b��,���������X,���������Y)�x//�����W�w��͐�΂̂�
	CoilAllDelete(300,-50,370);
	//���R�C���҂�
	CoilWait();

	Fw("fw���t_�ʏ�_rage");
//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0031]
//�y���t�z
<voice name="���t" class="���t" src="voice/dm52/6000020a01">
"Shit&.&.&.!"


</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0032]
It's not that I think that they've all gone strange in the head&.

I actually think that Granny is okay&.

But&.&.&.

All of the anxiety and dread is quickly piling up&.

If the music affected all of them&.&.&.

Every worst-possible scenario fills my head despite my 
attempts to think of something else&.


</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
	TextBoxDelete(0);

	CreateSE("SE01","se�l��_����_�ߎC��01");
	MusicStart("SE01",0,700,0,1000,null,false);

	CreateSE("SE02","se�l��_����_�ߎC��15");
	MusicStart("SE02",0,700,0,1000,null,false);

	Fw("fw���t_�ʏ�_angry");
//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0033]
//�y���t�z
<voice name="���t" class="���t" src="voice/dm52/6000030a01">
"Ren&, let's go&."

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0040]
I stand up from the sofa and call out to Ren&, who is 
sitting by my feet&.


</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

	Fw("fwAM�@_�ʏ�_normal");
//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0041]
//�y�@�z
<voice name="�@" class="�@" src="voice/dm52/6000040a06">
"&.&.&.Roger&."

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0042]
Ren looked up at me as if he wanted to say something&, but 
he just wagged his tail&. 

I get my outfit together and run out of Glitter&, Ren safe 
and sound inside of my bag&.

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
	TextBoxDelete(0);

	SetVolumeEX("@dm*", 1000, 0, null);

	CreateColorSP("�G����", 25000, "BLACK");
	DrawTransition("�G����", 500, 0, 1000, 100, null, "cg/data/blind_01_00_0.png", true);

	Wait(500);

//�����t�@�C��["dm5270.nss"]

}
