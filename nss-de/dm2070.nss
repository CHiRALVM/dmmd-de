//<continuation number="140">
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


scene dm2070.nss_MAIN
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
	#bg305021_5_�v���`�i�W�F�C���Q�[�g�O=true;

	//�����[�g�t���O�A�I�����A����GameName
	$PreGameName = $GameName;
	$GameName = "dm2080.nss";

}


scene dm2070.nss
{

	//���V�[���̓��ɕK���L�q
	$�X�N���v�g�o�[�W���� = " $Revision:  $";
	$�\���� = ModuleFileName();
	$�\���� = $SYSTEM_present_process;
	SystemInit();


//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\

	PrintBG("��w�i", 30000);

	OnBG(10,"bg305021_5_�v���`�i�W�F�C���Q�[�g�O");
	FadeBG(0,true);

	CreateColorSP("�G�F��", 4000, "FFFFFF");

	DrawDelete("��w�i", 500, 100, null, "circle_01_00_1", true);

//���Q�[�g�����E�֐Â��ɃX���C�h���ĊJ��
//���ςςςρ[��ƃN���b�J�[�̉��A�t�@���t�@�[��
	CreateSE("SE01","se�[��_����_�t�@���t�@�[��");//�������u�r�d�Fse�[��_����_�t�@���t�@�[���v
	MusicStart("SE01",0,700,0,1000,null,false);

	Wait(30);
	Fade("�G�F��", 70, 0, null, true);

	Wait(50);

	Fade("�G�F��", 0, 1000, null, true);
	Wait(30);
	Fade("�G�F��", 70, 0, null, true);

	Wait(50);

	Fade("�G�F��", 0, 1000, null, true);
	Wait(30);
	Fade("�G�F��", 70, 0, null, true);

	Wait(50);

	Fade("�G�F��", 0, 1000, null, true);
	Wait(500);

	Request("�G�F��", AddRender);

	Fade("�G�F��", 1000, 0, null, true);
	Delete("�G�F��");

	SoundPlay("@dm002",0,450,true);

	Fw("fw���t_�ʏ�_shock2");
//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0010]
//�y���t�z
<voice name="���t" class="���t" src="voice/dm20/7000010a01">
"!"

{	Fw("fwm�p���__�ʏ�_normal");}
//�y�ē��p���_�z
<voice name="�ē��p���_" class="�ē��p���_" src="voice/dm20/7000020e02">
"Welcome to Japan's biggest&, highest quality entertainment
 facility of love&, dreams and healing&, Platinum Jail!"


</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

	CreateTextureEX("�G�w�i", 100, -490, -380, "cg/bg/l/bg305021_5_�v���`�i�W�F�C���Q�[�g�O_l.jpg");


//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0012]
As soon as the gate opens&, we're greeted by a showy 
fanfare and firecrackers&, accompanied by a strange panda&.

{Fade("�G�w�i",500,1000,null,true);}
On the other side of the room are five white doors&.


</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

	Fw("fwm�p���__�ʏ�_normal");
//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0014]
//�y�ē��p���_�z
<voice name="�ē��p���_" class="�ē��p���_" src="voice/dm20/7000030e02">
"This is a paradise on earth where only the chosen can
 enter! Please have fun to your hearts' content!"

{	Fw("fw�m�C�Y_�ʏ�_angry");}
//�y�m�C�Y�z
<voice name="�m�C�Y" class="�m�C�Y" src="voice/dm20/7000040a03">
"Damn suspicious&."

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

	Fw("fw���t_�ʏ�_sigh");
//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0020]
//�y���t�z
<voice name="���t" class="���t" src="voice/dm20/7000050a01">
"Yeah&.&.&."


</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0021]
The panda ignores us and presses a button on the wall&.

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

	Roulette("�m�C�Y");

	Fw("fwm�p���__�ʏ�_normal");
//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0022]
//�y�ē��p���_�z
<voice name="�ē��p���_" class="�ē��p���_" src="voice/dm20/7000060e02">
"Weeell then&, what will your destination be? Fun-fun
 roulette&, start!"


</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
	TextBoxDelete(0);

//�������u���o�F���[���b�g���o�A���e�ɂ���Ă͒n�̕��������v
	RouletteFade();

	Fw("fwm�p���__�ʏ�_normal");
//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0025]
//�y�ē��p���_�z
<voice name="�ē��p���_" class="�ē��p���_" src="voice/dm20/7000070e02">
"Oooooh&, Your destination is Green Playground!
 Come&, come&, this way please!"

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);


//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0030]
The panda stands in front of the second door from the 
left&, one arm outstretched&.


</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

	Fw("fwm�p���__�ʏ�_normal");
//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0031]
//�y�ē��p���_�z
<voice name="�ē��p���_" class="�ē��p���_" src="voice/dm20/7000080e02">
"This is the best playground equipped with the newest game
 centers and enjoyable amenities! You'll be in a world far
 from boredom for the rest of your life! Have a good time
 playing and bon voyage!"


</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

	DeleteFw();
	RouletteDelete();

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0032]
Still put off by the panda's show&, Noiz and I walk 
towards the door&.


</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

	Fw("fwm�p���__�ʏ�_normal");
//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0033]
//�y�ē��p���_�z
<voice name="�ē��p���_" class="�ē��p���_" src="voice/dm20/7000090e02">
"Well then&, go ahead! Please hold up your invitation ticket to the authentication monitor next to the door!"


</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

	CreateSE("SE01","se����_�R�C��_���쉹01");//�������u�r�d�Fse����_�R�C��_���쉹01�v
	MusicStart("SE01",0,700,0,1000,null,false);

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0034]
I bring up the invitation on my Coil and show it to the 
monitor&.

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
	TextBoxDelete(0);

//	CreateSE("SE01","se����_�R�C��_���쉹03");//�������u�r�d�Fse����_�R�C��_���쉹03�v
//	MusicStart("SE01",0,700,0,1000,null,false);

	//���k���o���N
	CoilBank05a();

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0035]
//�����H�F���j�^�[�̂��d�q�����݂���
//�y�F�؃��j�^�[�z
<voice name="�F�؃��j�^�[" class="�F�؃��j�^�[" src="voice/dm20/7000100e06">
"Platinum ID confirmed&. Aoba-sama and guest&, welcome to
 Platinum Jail&. The admission formalities will now begin&."

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0040]
//�����H�F���j�^�[�̂��d�q�����݂���
//�y�F�؃��j�^�[�z
<voice name="�F�؃��j�^�[" class="�F�؃��j�^�[" src="voice/dm20/7000110e06">
"Guest has been granted Guest ID&. Guest&, please show your 
 Coil to the monitor&."


</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

	CreateSE("SE01","se����_�R�C��_���쉹01");//�������u�r�d�Fse����_�R�C��_���쉹01�v
	MusicStart("SE01",0,700,0,1000,null,false);

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0041]
Noiz holds up his Coil to the monitor&.

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

	CreateSE("SE01","se����_�R�C��_���쉹03");//�������u�r�d�Fse����_�R�C��_���쉹03�v
	MusicStart("SE01",0,700,0,1000,null,false);

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0042]
//�����H�F���j�^�[�̂��d�q�����݂���
//�y�F�؃��j�^�[�z
<voice name="�F�؃��j�^�[" class="�F�؃��j�^�[" src="voice/dm20/7000120e06">
"Confirmed&, Guest ID now being transmitted&. All
 jurisdiction belongs to the Platinum ID holder&."

//�����H�F���j�^�[�̂��d�q�����݂���
//�y�F�؃��j�^�[�z
<voice name="�F�؃��j�^�[" class="�F�؃��j�^�[" src="voice/dm20/7000130e06">
"The Guest ID has restricted use only&, so please practice
 caution&."

{
	SetVolumeEX("@dm*", 2000, 0, null);
}
//�����H�F���j�^�[�̂��d�q�����݂���
//�y�F�؃��j�^�[�z
<voice name="�F�؃��j�^�[" class="�F�؃��j�^�[" src="voice/dm20/7000140e06">
"Please read the detailed support section in the full
 Invitation Card&. Please enjoy&."


</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
	TextBoxDelete(0);

	//���k���o���N
	CoilBank05b();

//���F���a�f�l�p��
	ClearFadeAll(2000, true);
	Wait(1000);

//�����t�@�C��["dm2080.nss"]

}
