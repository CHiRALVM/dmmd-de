//<continuation number="230">
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


scene dm4500.nss_MAIN
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
	#bg304121_5_���]�^���[���]�̊ԃZ�C=true;
	#bg304031_5_���]�^���[�L��01�Z�C=true;
	#bg304021_5_���]�^���[�O�ʂ�Z�C=true;
	#bg301021_5_�v���`�i�W�F�C�����ʂ�4�A�N�A�Z�C=true;
	#bg301011_5_�v���`�i�W�F�C����ʂ�4�A�N�A�Z�C=true;

	//�����[�g�t���O�A�I�����A����GameName
	$PreGameName = $GameName;
	$GameName = "dm4510.nss";

$HALevel=1;

}


scene dm4500.nss
{

	//���V�[���̓��ɕK���L�q
	$�X�N���v�g�o�[�W���� = " $Revision:  $";
	$�\���� = ModuleFileName();
	$�\���� = $SYSTEM_present_process;
	SystemInit();


//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\

	SoundPlay("@dm020a",0,700,true);

	PrintBG("��w�i", 30000);

	OnBG(10,"bg304122_5_���]�^���[���]�̊�");
	FadeBG(0,true);

	CreateTextureSP("�G�w�i��2", 70, Center, Middle, "cg/bg/bg304121_5_���]�^���[���]�̊�.jpg");
	CreateTextureSP("�G�w�i��", 80, Center, Middle, "cg/bg/bg304122_5_���]�^���[���]�̊�.jpg");

	CreateTextureSP("�G�d�u200", 200, Center, Middle, "cg/ev/ev940�̂��N���A.jpg");

	FadeDelete("��w�i", 0, null, true);

//===========================================
//����I������I�΂Ȃ������ꍇ�A�ȉ���
//===========================================

//	Fw("fw�N���A��_�ʏ�}�X�N�Ȃ�_normal");
//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0010]
{
	FadeDelete("�G�d�u200", 500, null, true);
}
//�y�N���A���z
<voice name="�N���A��" class="�A���t�@" src="voice/dm45/0000010b18">
"Ugaaah&.&.&."

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

	CreateSE("SE01","se�l��_�Ռ�_�]�|02");
	MusicStart("SE01",0,700,0,1000,null,false);

	Wait(50);

	CreateSE("SE02","se�l��_�Ռ�_�]�|01");
	MusicStart("SE02",0,700,0,800,null,false);

	Wait(500);

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0011a]
The two ��'s fall to the floor&, both desperately grasping 
at their heads in pain&.

After a short time&.&.&. they stop moving&.

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

	SetVolumeEX("@dm*", 3000, 0, null);

	CreateSE("SE02","se�l��_�Ռ�_�]�|02");
	MusicStart("SE02",0,500,0,1300,null,false);

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0011b]
Clear finishes his song&, and his knees start to bend&.

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

	Fw("fw�N���A_����_normal");
//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0011c]
//�y�N���A�z
<voice name="�N���A" class="�N���A" src="voice/dm45/0000020a04">
"&.&.&.!"

{	Fw("fw���t_�ʏ�_shout");}
//�y���t�z
<voice name="���t" class="���t" src="voice/dm45/0000030a01">
"Clear!"

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

	DeleteFw();

	CreateSE("SE02","se�l��_����_�ߎC��01");
	MusicStart("SE02",0,500,0,1100,null,false);

	CreateTextureEX("�G�w�i101", 101, -208, -195, "cg/bg/m/bg304122_5_���]�^���[���]�̊�_m.jpg");
	Move("�G�w�i101", 500, -59, -280, Dxl3, false);
	Fade("�G�w�i101", 500, 1000, null, true);

	CreateSE("SE01","se�l��_����_����01");
	MusicStart("SE01",0,700,0,800,null,false);

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0012]
I frantically rush over and support him&.

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

	Fw("fw���t_�ʏ�_worry4");
//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0013]
//�y���t�z
<voice name="���t" class="���t" src="voice/dm45/0000040a01">
"Are you okay?"

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

	Fw("fw�N���A_���ʕ���_normal2");
//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0020]
//�y�N���A�z
<voice name="�N���A" class="�N���A" src="voice/dm45/0000050a04">
"Yes&.&.&."

{	Fw("fw���t_�ʏ�_normal2");}
//�y���t�z
<voice name="���t" class="���t" src="voice/dm45/0000060a01">
"That song just now&.&.&."

{	Fw("fw�N���A_���ʕ���_normal");}
//�y�N���A�z
<voice name="�N���A" class="�N���A" src="voice/dm45/0000070a04">
"I overloaded their throughput with the the largest amount
 of output in my song&."

{	SoundPlay("@dm015",0,450,true);}
{	Fw("fw�N���A_���ʕ���_normal2");}
//�y�N���A�z
<voice name="�N���A" class="�N���A" src="voice/dm45/0000080a04">
"I never sang the same song as them&. So my melody is a
 complete oppposite of what theirs is&."

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

	Fw("fw���t_�ʏ�_shock2");
//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0021]
//�y���t�z
<voice name="���t" class="���t" src="voice/dm45/0000081a01">
"Complete opposite&.&.&.?"

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

	Fw("fw�N���A_���ʕ���_normal2");
//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0030]
//�y�N���A�z
<voice name="�N���A" class="�N���A" src="voice/dm45/0000100a04">
"When Grandpa revised me&, he programmed it in case of an
 emergency&, I think&."

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

	Fw("fw�N���A_���ʕ���_serious");
//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0031]
//�y�N���A�z
<voice name="�N���A" class="�N���A" src="voice/dm45/0000110a04">
"The song's soundwaves were made so the �� could not
 process them&."

{	Fw("fw�N���A_���ʕ���_serious2");}
//�y�N���A�z
<voice name="�N���A" class="�N���A" src="voice/dm45/0000111a04">
"And so the output of my song went past their limit of
 throughput and destroyed them&.&.&."

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

	Fw("fw�N���A_���ʕ���_sad");
//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0032]
//�y�N���A�z
<voice name="�N���A" class="�N���A" src="voice/dm45/0000120a04">
"I'm not sure if it worked well or not&.&.&."

{	Fw("fw���t_�ʏ�_worry4");}
//�y���t�z
<voice name="���t" class="���t" src="voice/dm45/0000130a01">
"I see&.&.&. But that was really pushing it&, you idiot&."

{	Fw("fw�N���A_���ʕ���_worry");}
//�y�N���A�z
<voice name="�N���A" class="�N���A" src="voice/dm45/0000140a04">
"I'm sorry&."

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0035]
Clear looks up at me with a slightly troubled grin&.

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

	CreatePlainSP("�G��", 5000);

	Delete("�G�w�i");
	Delete("�G�w�i101");
	Fade("�G�w�i��", 0, 0, null, true);

	FadeDelete("�G��", 500, null, true);

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0040]
When I look around&, I see that Toue has vanished&.
He must've run out of the room&.


</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

	Fw("fw���t_�ʏ�_hard2");
//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0041]
//�y���t�z
<voice name="���t" class="���t" src="voice/dm45/0000150a01">
"That bastard&.&.&."


</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
	TextBoxDelete(0);

//�������������A�ƃ^���[���h���

	CreateSE("SE01","se����_���]�^���[_�n��01L");
	MusicStart("SE01",0,300,0,1000,null,true);

//	BGPlainShake(50,3000,0,5,0,0,1000,null,true);

//	CreatePlainSP("�G��", 5000);
//	Shake("�G��", 500, 0, 15, 0, 0, 1000, null, false);
//	Wait(500);
//	Delete("�G��");

//���Z�C�̊炪���j�^�[�Ɏ��X����鉉�o

	SetVolumeEX("@dm*", 1000, 0, null);
	Wait(32);

	CreateTextureEX("back", 200, Center, Middle, "cg/bg/bg304121_5_���]�^���[���]�̊�.jpg");#bg304121_5_���]�^���[���]�̊ԃZ�C=true;
	CreateTextureEX("back2", 2000, Center, Middle, "cg/bg/bg304031_5_���]�^���[�L��01�Z�C.jpg");#bg304031_5_���]�^���[�L��01�Z�C=true;
	CreateTextureEX("back3", 2000, Center, Middle, "cg/bg/bg304021_5_���]�^���[�O�ʂ�Z�C.jpg");#bg304021_5_���]�^���[�O�ʂ�Z�C=true;
	CreateTextureEX("back4", 2000, Center, Middle, "cg/bg/bg301021_5_�v���`�i�W�F�C�����ʂ�4�A�N�A�Z�C.jpg");#bg301021_5_�v���`�i�W�F�C�����ʂ�4�A�N�A�Z�C=true;
	CreateTextureEX("back5", 2000, Center, Middle, "cg/bg/bg301011_5_�v���`�i�W�F�C����ʂ�4�A�N�A�Z�C.jpg");#bg301011_5_�v���`�i�W�F�C����ʂ�4�A�N�A�Z�C=true;
	Zoom("back*", 0, 1050, 1050, null, true);
	Request("back*", Smoothing);
	Wait(500);
	CreateColorEXadd("�G�F��", 5000, "FFFFFF");

	CreatePlainSP("�G��", 2000);
	Delete("�G�d�u");
	SetBlur("�G��", true, 3, 500, 50, false);
	Fade("back", 0, 1000, null, true);

	Zoom("�G��", 300, 2000, 2000, Axl1, false);
	FadeDelete("�G��", 300, null, false);

	CreateSE("SE01","se�[��_����_�͑��t01");
	CreateSE("SE02","se����_���]�^���[_�n��01aL");
	MusicStart("SE01",0,700,0,200,null,false);
	MusicStart("SE02",4000,700,0,1000,null,true);

	SeiMonitorCreate01();

	Shake("back*", 60000, 0, 1, 0, 30, 1000, null, false);
	Shake("sei*", 60000, 0, 1, 0, 30, 1000, null, false);

	SeiMonitorStart01();

	Fade("�G�F��", 100, 1000, null, true);
	Fade("back2", 0, 1000, null, true);
	Fade("�G�F��", 200, 0, null, true);

	Wait(500);

	Fade("�G�F��", 100, 1000, null, true);
	Fade("back3", 0, 1000, null, true);
	Fade("�G�F��", 200, 0, null, true);

	Wait(500);

	Fade("�G�F��", 100, 1000, null, true);
	Fade("back4", 0, 1000, null, true);
	Fade("�G�F��", 200, 0, null, true);

	Wait(500);

	Fade("�G�F��", 100, 1000, null, true);
	Fade("back5", 0, 1000, null, true);
	Fade("�G�F��", 200, 0, null, true);

	Wait(500);

	Fade("�G�F��", 500, 1000, null, true);

	CreateSE("SE11","se����_���]�^���[_�n����01");
	MusicStart("SE11",0,700,0,1000,null,true);

	CreateSE("SE10","se�[��_���__����01L");
	MusicStart("SE10",0,700,0,1000,null,true);

	Wait(1000);
	SetVolumeEX("SE*", 2000, 0, null);
	SetVolumeEX("@dm*", 2000, 0, null);

	CreateSE("SE12","se����_���]�^���[_�n��01L");
	MusicStart("SE12",1000,300,0,1000,null,true);

	Fade("�G�F��", 100, 1000, null, true);

	Wait(1000);
//	Shake_Loop_shima3("@�G�w�i��*","�v���n�k")

	dm1500ShakeLoop("�G�h��","bg304121_5_���]�^���[���]�̊�",400,1);




//	SetVolumeEX("SE10", 1000, 0, null);
	Delete("back*");
	Delete("sei*");
	FadeDelete("�G�F��", 1000, null, true);

	Fw("fw���t_�ʏ�_shock2");
//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0043]
//�y���t�z
<voice name="���t" class="���t" src="voice/dm45/0000160a01">
"!?"

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0044]
Suddenly&, the tower starts to shake&.

What was that just now&.&.&.?

A number of monitors appear&, and someone's face is&.&.&.

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

	Shake_LoopFree("@�G�w�i��",0,1,0,0,500);
	Fade("�G�w�i��", 0, 1000, null, true);
	FadeDelete("�G�h��", 500, null, true);

	Delete("�G�w�i��2");

$HALevel=1;

	St("C",740, @0,@0,"bu�N���A_���ʕ���_normal2");
	FadeSt("C",200,true);

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0050]
//�y�N���A�z
<voice name="�N���A" class="�N���A" src="voice/dm45/0000170a04">
"&.&.&.Ah&."

{	St("C",740, @0,@0,"bu�N���A_���ʕ���_sad");
	FadeSt("C",200,true);}
//�y�N���A�z
<voice name="�N���A" class="�N���A" src="voice/dm45/0000180a04">
"&.&.&.Right now&, the original source of our power was just
 terminated&."

{	Fw("fw���t_�ʏ�_shock");}
//�y���t�z
<voice name="���t" class="���t" src="voice/dm45/0000190a01">
"Original?"

{	St("C",740, @0,@0,"bu�N���A_���ʕ���_normal");
	FadeSt("C",200,true);}
//�y�N���A�z
<voice name="�N���A" class="�N���A" src="voice/dm45/0000200a04">
"Yes&. The symbol of Toue's ambitions&, all of Platinum
 Jail&."

{	St("C",740, @0,@0,"bu�N���A_���ʕ���_normal2");
	FadeSt("C",200,true);}
//�y�N���A�z
<voice name="�N���A" class="�N���A" src="voice/dm45/0000210a04">
"I'm not affected because I broke my key lock&, but all
 power to the �� have been cut off&. They should not be able
 to move anymore&."

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

	St("C",740, @0,@0,"bu�N���A_���ʕ���_serious");
	FadeSt("C",200,true);
//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0060]
//�y�N���A�z
<voice name="�N���A" class="�N���A" src="voice/dm45/0000220a04">
"And now before long&, this entire tower will collapse&."

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

	Fw("fw���t_�ʏ�_shock2");
//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0061]
//�y���t�z
<voice name="���t" class="���t" src="voice/dm45/0000221a01">
"&.&.&.?"

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
	TextBoxDelete(0);

/*
	CreateTextureEX("�G��", 3001, Center, Middle, "cg/bg/bg304121_5_���]�^���[���]�̊�.jpg");
	CreateTextureEX("�G��", 3000, Center, Middle, "cg/bg/bg304121_5_���]�^���[���]�̊�.jpg");
	Fade("�G��", 1000, 1000, null, true);
	Fade("�G��", 0, 1000, null, true);
	SetVolumeEX("SE*", 1000, 700, null);
	Shake("�G��", 3000, 0, 10, 0, 2, 1000, null, false);

	St("C",740, @0,@0,"fu�N���A_���ʕ���_serious");
	FadeSt("C",0,true);

	Wait(1500);

	FadeDelete("�G��", 1000, null, false);
	FadeDelete("�G��", 1000, null, true);
*/

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0062]
I don't understand what Clear is saying&.

The tower crumbling doesn't sound like a completely bad 
thing&, except&.&.&.


</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

	Fw("fw���t_�ʏ�_rage");
//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0063]
//�y���t�z
<voice name="���t" class="���t" src="voice/dm45/0000230a01">
"Anyway&, we have to get out of here before it falls&. Hold
 onto me!"

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

	DeleteFw();
	CreatePlainSP("�G��", 5000);

	Delete("�G�w�i");
	DeleteAllSt(0,true);
	CreateSE("SE11","se�l��_����_�ߎC��01");
	MusicStart("SE11",0,700,0,1000,null,false);
	FadeDelete("�G��", 500, null, true);

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0064]
I pull Clear's arm over my shoulder&, and start running 
while holding his entire body up&.

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
	TextBoxDelete(0);

	SetVolumeEX("SE*", 1000, 0, null);
	CreateColorSP("�G����", 25000, "BLACK");
	DrawTransition("�G����", 500, 0, 1000, 100, null, "cg/data/blind_01_00_0.png", true);

	Shake_LoopDelete();

	Wait(500);

//�����t�@�C��["dm4510.nss"]

}
