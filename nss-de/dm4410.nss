//<continuation number="200">
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


scene dm4410.nss_MAIN
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
	$GameName = "dm4420.nss";

}


scene dm4410.nss
{

	//���V�[���̓��ɕK���L�q
	$�X�N���v�g�o�[�W���� = " $Revision:  $";
	$�\���� = ModuleFileName();
	$�\���� = $SYSTEM_present_process;
	SystemInit();


//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\

	PrintGO("��w�i", 30000);

	OnBG(10,"bg301031_5_�v���`�i�W�F�C���ʂ�H�n01");
	FadeBG(0,true);

	CreateTextureSP("�G�w�i200", 200, -1022, -477, "cg/bg/l/bg301031_5_�v���`�i�W�F�C���ʂ�H�n01_l.jpg");

	Delete("��w�i");

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0010]
{
	FadeDelete("�G�w�i200", 500, null, true);
//���R�C���̃��[�����M
	CreateSE("SE01","se����_�R�C��_��M���t");
	MusicStart("SE01",0,700,0,1000,null,false);
}
My ringtone for my Coil sounds&.
It's a message&.

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
	TextBoxDelete(0);

	//���@�R�C�����o�ݒu�P
	CoilIntoSet();
	//���@�R�C�����o�ݒu�Q
	CoilStartSet();
	//���E�摜�ݒu�wCoilPictSet(X�ʒu,Y�ʒu,"�摜�p�X")�x
	CoilPictSet(303,16,"cg/ef/ef�R�C�����ҏ󓌍]_BASE.png");

	//���E�摜�\���P�i�ʏ�\���j
	//CoilPictFade();
	//���E�摜�\���Q�i���[���_�E�����[�h����̕\���j
	CoilPictFade_Down();
	//���E�摜�\���R�i���[������̒��ڕ\���j
	//CoilPictFade_Mail();

	//���@�R�C�����o�\��
	CoilStartFade();

	//���R�C���҂�
	CoilWait();

	Wait(1000);

	//���E�ǉ��摜�ݒu�wCoilPictCon("�i�b�g��","�摜�p�X")�x
	CoilPictCon("�Q","cg/ef/ef�R�C�����ҏ󓌍]_BASE01.png");
	CoilPictCon("�R","cg/ef/ef�R�C�����ҏ󓌍]_BASE02.png");

	//���E�ǉ��摜�\��
	CoilPictFadeCon("�Q");
	//���E�摜�`��ҋ@�i���[�r�[�Ƃ��j
	CoilPictWait();

	Wait(1000);

	//���E�ǉ��摜�\��
	CoilPictFadeCon("�R");
	//���E�摜�`��ҋ@�i���[�r�[�Ƃ��j
	CoilPictWait();

	Wait(1000);

	Fw("fw���t_�ʏ�_normal2");
//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0020]
//�y���t�z
<voice name="���t" class="���t" src="voice/dm44/1000010a01">
"&.&.&.an invitation?"

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0030]
The showy message has the word "Invitation" written on it&.

It's inviting me to the Oval Tower&.

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
	TextBoxDelete(0);

	//���w�ėp�x�R�C�����[�P�wCoilDelete("�w��̃R�C����",�b��,���������X,���������Y)�x//�����W�w��͐�΂̂�
	CoilDelete("CoilPict",300,500,500);
	//���R�C���҂�
	CoilWait();

	SoundPlay("@dm005",0,450,true);

	Fw("fw���t_�ʏ�_shock2");
//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0040]
//�y���t�z
<voice name="���t" class="���t" src="voice/dm44/1000020a01">
"An invitation to the tower&.&.&."

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

	St("C",740, @0,@0,"bu�N���A_�ʏ�}�X�N�Ȃ�_serious2");
	FadeSt("C",200,true);

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0041]
//�y�N���A�z
<voice name="�N���A" class="�N���A" src="voice/dm44/1000030a04">
"It must be Toue's trap&."

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0050]
Clear's expression turns serious&.

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

	St("C",740, @0,@0,"bu�N���A_�ʏ�}�X�N�Ȃ�_serious");
	FadeSt("C",200,true);

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0051]
//�y�N���A�z
<voice name="�N���A" class="�N���A" src="voice/dm44/1000031a04">
"They must've made their report about me earlier&."

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

	Fw("fwAM�@_�ʏ�_normal");
//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0052]
//�y�@�z
<voice name="�@" class="�@" src="voice/dm44/1000040a06">
"Aoba&, are you going to go?"

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

	DeleteFw();
	DeleteSt("C", 200,true);
//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0060]
Just like Clear said&, this is probably a trap&.

If those two were the same as Clear&, there's a chance they know about my voice&.

I'm sure that Toue knows that I'm able to use Scrap&, but 
he may even know more if he's inviting me directly&.

We need to get to Toue no matter what&.

Then&.&.&. why don't we just step into Toue's trap?

That's what Toue wants&, but if we let him hold that event 
then it's all over&.

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

	Fw("fw���t_�ʏ�_angry");
//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0061]
//�y���t�z
<voice name="���t" class="���t" src="voice/dm44/1000050a01">
"&.&.&.Let's go and check it out&."

{	Fw("fw���t_�ʏ�_serious");}
//�y���t�z
<voice name="���t" class="���t" src="voice/dm44/1000060a01">
"I don't know if it's a trap or not&, but it's still a
 chance to meet with Toue&."

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

	Fw("fwAM�@_�ʏ�_normal");
//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0062]
//�y�@�z
<voice name="�@" class="�@" src="voice/dm44/1000080a06">
"Understood&."

{
	CreateSE("SE01","se�l��_�Ռ�_�@��02");
	MusicStart("SE01",0,400,0,1200,null,false);

	St("C",740, @0,@0,"bu�N���A_�ʏ�}�X�N�Ȃ�_normal");
	FadeSt("C",200,true);
}
//�y�N���A�z
<voice name="�N���A" class="�N���A" src="voice/dm44/1000090a04">
"Ren-san&, it'll be fine&. I will definitely protect
 Aoba-san&."

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0070]
Clear pounds his chest with utmost confidence&.

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

	Fw("fwAM�@_�ʏ�_normal");
//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0080]
//�y�@�z
<voice name="�@" class="�@" src="voice/dm44/1000100a06">
"&.&.&.That's true&."

{	St("C",740, @0,@0,"bu�N���A_�ʏ�}�X�N�Ȃ�_worry");
	FadeSt("C",200,true);}
//�y�N���A�z
<voice name="�N���A" class="�N���A" src="voice/dm44/1000110a04">
"What was with that pause?"

{	Fw("fwAM�@_�ʏ�_normal");}
//�y�@�z
<voice name="�@" class="�@" src="voice/dm44/1000120a06">
"Don't worry about it&."

{	St("C",740, @0,@0,"bu�N���A_�ʏ�}�X�N�Ȃ�_serious");
	FadeSt("C",200,true);}
//�y�N���A�z
<voice name="�N���A" class="�N���A" src="voice/dm44/1000130a04">
"Hmph!"

{	Fw("fw���t_�ʏ�_normal2");}
//�y���t�z
<voice name="���t" class="���t" src="voice/dm44/1000140a01">
"Okay&, let's go&."

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

	St("C",740, @0,@0,"bu�N���A_�ʏ�}�X�N�Ȃ�_normal");
	FadeSt("C",200,true);
	DeleteStPro("C", 800, 200);
//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0090]
//�y�N���A�z
<voice name="�N���A" class="�N���A" src="voice/dm44/1000150a04">
"Yes-<?>
{	Wait(800);CreateSE("SE01","se�l��_����_���01");MusicStart("SE01",0,600,0,900,null,false);}...!"

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

	Fw("fw���t_�ʏ�_shock2");
//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0091]
//�y���t�z
<voice name="���t" class="���t" src="voice/dm44/1000160a01">
"!"

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0100]
Clear's face turns grave&, and he staggers&, holding his arm&.

It's the arm that sparked a while ago&.

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

	Fw("fw���t_�ʏ�_shock2");
//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0110]
//�y���t�z
<voice name="���t" class="���t" src="voice/dm44/1000170a01">
"Are you okay?"

{	St("C",740, @0,@0,"bu�N���A_�ʏ�}�X�N�Ȃ�_worry2");
	FadeSt("C",200,true);}
//�y�N���A�z
<voice name="�N���A" class="�N���A" src="voice/dm44/1000180a04">
"I'm sorry&, I'm all right&. Let's go&."

{	Fw("fw���t_�ʏ�_worry3");}
//�y���t�z
<voice name="���t" class="���t" src="voice/dm44/1000190a01">
"If it gets too bad&, tell me right away&."

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

	St("C",740, @0,@0,"bu�N���A_�ʏ�}�X�N�Ȃ�_worry");
	FadeSt("C",200,true);
//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0120]
//�y�N���A�z
<voice name="�N���A" class="�N���A" src="voice/dm44/1000200a04">
"I will&."

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

	DeleteAllSt(200,true);

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0130]
I'm worried about Clear's condition&, but&.&.&.
We still continue to run in the direction of the tower&.

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
	TextBoxDelete(0);

	SetVolumeEX("@dm*", 1000, 0, null);

	CreateColorSP("�G����", 25000, "BLACK");
	DrawTransition("�G����", 1000, 0, 1000, 100, null, "cg/data/blind_01_00_0.png", true);

//�����t�@�C��["dm4420.nss"]

}
