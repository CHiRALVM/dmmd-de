//<continuation number="190">
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


scene dm5230.nss_MAIN
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

	//�����[�g�t���O�A�I�����A����GameName
	$PreGameName = $GameName;
	$GameName = "dm5240.nss";

	//�����Ƀ��x���ݒ�
	$HALevel=3;

}


scene dm5230.nss
{

	//���V�[���̓��ɕK���L�q
	$�X�N���v�g�o�[�W���� = " $Revision:  $";
	$�\���� = ModuleFileName();
	$�\���� = $SYSTEM_present_process;
	SystemInit();

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\

	SoundPlay("@dm019",0,450,true);

	PrintBG("��w�i", 30000);

	OnBG(10,"bg304021_5_���]�^���[�O�ʂ胂�u");
	FadeBG(0,true);

	FadeDelete("��w�i", 0, null, true);

	SetVolumeEX("@dm*", 2000, 0, null);

//���R�C�����M

	//���R�C�����M
	CreateSE("coilsound_phone_call","se����_�R�C��_���M���t");
	MusicStart("coilsound_phone_call",0,700,0,1000,null,true);


//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0010]
My Coil starts to ring&.

&.&.&.A call?

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

	Fw("fw���t_�ʏ�_shock2");
//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0011]
//�y���t�z
<voice name="���t" class="���t" src="voice/dm52/3000010a01">
"&.&.&.Eh!?"

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0012]
The one calling is&.&.&. Haga-san!?

But communication between Platinum Jail and the Old 
District should've been blocked&.&.&.!

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
	TextBoxDelete(0);

	CreateSE("SE01","se����_�R�C��_���쉹01");
	MusicStart("SE01",0,700,0,1000,null,false);

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0013]
I forced my way out of the pile of people&, moving as far 
away as I could&, and picked up&.

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
	TextBoxDelete(0);


	//���@�R�C�����o�ݒu�P
	CoilIntoSet();
	//���@�R�C�����o�ݒu�Q
	CoilStartSet();
	//���G�R�C���d�b�ݒu
	//CoilPhone_OutcallSet(368,30,"ko0170","Delivery Works",false);
	CoilPhone_IncallSet(368,30,"dm5230","Haga-san",true);
	//���G�R�C���d�b�o�O�Z�b�g
	CoilBugSet();

	//���G�R�C���d�b�o�O�o��
	CoilBugFade();

	//���@�R�C�����o�\��
	CoilStartFade();
	//���G�R�C���d�b�\��
	CoilPhone_CallFade();
	//���R�C���҂�
	CoilWait();

	Wait(1000);

	//���G�R�C���d�b�o��
	CoilPhone_CallOn(@0,@0,"�s��");

	Fw("fw���t_�ʏ�_shout2");
//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0014]
//�y���t�z
<voice name="���t" class="���t" src="voice/dm52/3000020a01">
"&.&.&.Haga-san!"

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

	//���G�R�C���d�b��
	CoilPhone_Face(@3,@5,"st�H��_�ʏ�_normal2");

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0015]
//�����H�F�m�C�Y������
//�y�H��z
<voice name="�H��" class="�H��" src="voice/dm52/3000030b07">
"&.&.&.Aoba-kun? &.&.&.I'm disguising my number as one from the
 mainland right now&. I'll try to talk for as long as I
 can&."

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

	Fw("fw���t_�ʏ�_worry4");
//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0021]
//�y���t�z
<voice name="���t" class="���t" src="voice/dm52/3000040a01">
"Haga-san&, are you all right? Right now they were just
 showing the Old Resident District&.&.&."

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);


//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0022]
//�����H�F�m�C�Y������
//�y�H��z
<voice name="�H��" class="�H��" src="voice/dm52/3000050b07">
"Yes&. Just a few moments ago&, music started blasting
 throughout the entire town&, and somehow Platinum Jail
 intermediaries stationed themselves here&."

{	Fw("fw���t_�ʏ�_worry4");}
//�y���t�z
<voice name="���t" class="���t" src="voice/dm52/3000060a01">
"What about everyone else? Like Granny or Koujaku&, or
 Yoshie-san and the others&.&.&."

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0023]
//�����H�F�m�C�Y������
//�y�H��z
<voice name="�H��" class="�H��" src="voice/dm52/3000070b07">
"Right now everyone is safe&. Just before the music started
 to play&, Tae-san told us to plug our ears&."

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

	Fw("fw���t_�ʏ�_worry3");
//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0030]
//�y���t�z
<voice name="���t" class="���t" src="voice/dm52/3000080a01">
"That's great to hear&.&.&."

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

	//���G�R�C���d�b��
	CoilPhone_Face(@3,@5,"st�H��_�ʏ�_worry");

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0031]
//�����H�F�m�C�Y������
//�y�H��z
<voice name="�H��" class="�H��" src="voice/dm52/3000090b07">
"Are you okay as well&, Aoba-kun&.&.&.?"

{	Fw("fw���t_�ʏ�_serious");}
//�y���t�z
<voice name="���t" class="���t" src="voice/dm52/3000100a01">
"I'm all right&."

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

	//���G�R�C���d�b��
	CoilPhone_Face(@3,@5,"st�H��_�ʏ�_normal2");

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0032]
//�����H�F�m�C�Y������
//�y�H��z
<voice name="�H��" class="�H��" src="voice/dm52/3000110b07">
"Is that so? At any rate&, please don't do anything absurd
 by yourself&. We're thinking of a counter plan on our side&.
 We will do something before tomorrow&."

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0033]
//�����H�F�m�C�Y������
//�y�H��z
<voice name="�H��" class="�H��" src="voice/dm52/3000120b07">
"It seems unlikely that we'll be able to do anything more
 today&, but I think Toue's main event is where he'll do
 something big&."

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0040]
//�����H�F�m�C�Y������
//�y�H��z
<voice name="�H��" class="�H��" src="voice/dm52/3000130b07">
"We have that much time left&. So calm down&, Aoba-kun&, and
 don't take any action on your part&."

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

	$CoilBugFade=1000;

	CreateSE("SE02","se�[��_����_�m�C�Y01");
	MusicStart("SE02",0,700,0,0,null,false);
	CreateSE("SE01","se�[��_����_�m�C�Y01L");
	MusicStart("SE01",8000,300,0,1000,null,true);
	Wait(200);

	$CoilBugFade=800;

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0041]
//�����H�F�m�C�Y������
//�y�H��z
<voice name="�H��" class="�H��" src="voice/dm52/3000140b07">
"If you do anything&, Tae-san and the others will be in
 tears&. Me too&, of course&. So&.&.&."

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

	//���I�R�C���d�b�G���[�Z�b�g
	CoilPhone_ErrorSet(200,100);

	$CoilBugFade=800;

	SetVolumeEX("@dm*", 1000, 0, null);

	CreateSE("SE02","se�[��_����_�m�C�Y01");
	MusicStart("SE02",0,700,0,1000,null,false);
	SetVolumeEX("SE*", 200, 0, null);

//���R�C���ʐM�����G���[
//�e�F�R�C�����o�͌��

	//���I�R�C���d�b�G���[�\��
	$coilphoneError=true;
	CoilPhone_ErrorFade();
	//���R�C���҂�
	CoilWait();


	Fw("fw���t_�ʏ�_shout2");
//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0042]
//�y���t�z
<voice name="���t" class="���t" src="voice/dm52/3000150a01">
"Haga-san? Haga-san!?"


</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);


//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0043]
&.&.&.The call dropped&.
I'll try to redial&.

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
	TextBoxDelete(0);

	//���G�R�C���d�b�ݒu
	CoilPhone_OutcallSet(368,30,"dm5230b","Haga-san",false);
	//���G�R�C���d�b�\��
	$coilphoneError=true;
	CoilPhone_CallFade();
	//���R�C���҂�
	CoilWait();

	Wait(300);

	//���G�R�C���d�b�ݒu
	CoilPhone_OutcallSet(368,30,"dm5230c","Haga-san",false);
	//���G�R�C���d�b�\��
	$coilphoneError=true;
	CoilPhone_CallFade();
	//���R�C���҂�
	CoilWait();

	Wait(300);

	//���G�R�C���d�b�ݒu
	CoilPhone_OutcallSet(368,30,"dm5230d","Haga-san",false);
	//���G�R�C���d�b�\��
	$coilphoneError=true;
	CoilPhone_CallFade();
	//���R�C���҂�
	CoilWait();

//�����o�F�R�C���G���[
//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0050]
It won't connect!
Shit!

{
	CreateSE("SE01","se��_�K��_����01");
	MusicStart("SE01",0,700,0,1000,null,true);

	CreateSE("SE01","se��_�K��_����03");
	MusicStart("SE01",3000,700,0,1000,null,true);
}
I give up on redialing&, and the noises of cheering all around 
clogged up my ears&.

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
	TextBoxDelete(0);

	//���w�ėp�x�R�C�����[�P�wCoilDelete("�w��̃R�C����",�b��,���������X,���������Y)�x//�����W�w��͐�΂̂�
	CoilDelete("CoilPhone",300,500,400);
	//���R�C���҂�
	CoilWait();

	CreatePlainSP("�G��", 5000);

	CreateTextureSP("�G�ꖇ�G", 100, Center, Middle, "cg/ev/ev520���]����a.jpg");
	CreateTextureSPadd("�G���o", 1200, Center, Middle, "cg/ef/effi�e���r��ʗp���ʃt�B���^�[.jpg");
	Fade("�G���o", 0, 300, null, true);

	FadeDelete("�G��", 500, null, true);

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0051]
//�y���]�z
<voice name="���]" class="���]" src="voice/dm52/3000160b02">
"I said this earlier&, but in Japan right now it is only the eve of tomorrow's true performance&. So please&, relax and
 be content for now&. &.&.&.I will be taking my leave&."


</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

	SetVolumeEX("SE*", 5000, 300, null);

	CreatePlainSP("�G��", 5000);

	Delete("�G�ꖇ*");
	Delete("�G��*");

	FadeDelete("�G��", 500, null, true);

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0052]
Toue grins and he and Sei are escorted back inside of the 
tower by their guards&.

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

	SoundPlay("@dm006",0,450,true);

	Fw("fw���t_�ʏ�_hard");
//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0053]
//�y���t�z
<voice name="���t" class="���t" src="voice/dm52/3000170a01">
"&.&.&.&.&."

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
	TextBoxDelete(0);

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0054]
As Toue left&, people cheered on for an encore&, but many 
were starting to trickle out&.

I stood in the middle in a daze and watched the people 
around me leave&.

My head is nearly blasted with those images of the Old 
Resident District and Haga-san's call&.

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
	TextBoxDelete(0);

//���ɃG�t�F�N�g(0)
	HAFade(2000, 0,true);

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0060]
And the headache becomes&.&.&. I don't even know what&.

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

	SetVolumeEX("SE*", 3000, 0, null);

	Fw("fwAM�@_�ʏ�_normal");
//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0061]
//�y�@�z
<voice name="�@" class="�@" src="voice/dm52/3000180a06">
"Aoba&, we should go back to Glitter and rest&."

{	Fw("fw���t_�ʏ�_rage");}
//�y���t�z
<voice name="���t" class="���t" src="voice/dm52/3000181a01">
"We don't have time for that&.&.&.!"

{	Fw("fwAM�@_�ʏ�_normal");}
//�y�@�z
<voice name="�@" class="�@" src="voice/dm52/3000182a06">
"Aoba&."

{	Fw("fw���t_�ʏ�_sad");}
//�y���t�z
<voice name="���t" class="���t" src="voice/dm52/3000190a01">
"&.&.&.Sorry&. You're right&."

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0062]
Ren's right&.

I need to get my thoughts in order&.

My impatience holds me down as I slowly make my way 
through the crowds&.

My feet feel heavy&.&.&. like they're clinging to the ground&.

But I feel like I'm out of reality&, walking on clouds&.

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
	TextBoxDelete(0);

	SetVolumeEX("@dm*", 2000, 0, null);

	CreateColorSP("�G����", 25000, "BLACK");
	DrawTransition("�G����", 1000, 0, 1000, 100, null, "cg/data/blind_01_00_0.png", true);

	Wait(1000);

//�����t�@�C��["dm5240.nss"]

}
