//<continuation number="110">
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


scene dm2350.nss_MAIN
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

	//�������Ή�
	//$CautionAlarm=true;

	//�����[�g�t���O�A�I�����A����GameName
	$PreGameName = $GameName;
	$GameName = "dm2360.nss";

}


scene dm2350.nss
{

	//���V�[���̓��ɕK���L�q
	$�X�N���v�g�o�[�W���� = " $Revision:  $";
	$�\���� = ModuleFileName();
	$�\���� = $SYSTEM_present_process;
	SystemInit();


//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\

	PrintBG("��w�i", 30000);

	OnBG(10,"bg304081_5_���]�^���[���u����");
	FadeBG(0,true);

	FadeDelete("��w�i", 1000, null, true);

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0010]
&.&.&.About thirty minutes have passed since then&.

Noiz hasn't returned yet&.

&.&.&.He's late&.

This is too weird&.
Whatever's happened&, it's made him really late&.

Did something bad actually happen?
Was he caught in the middle of something?

I don't want to assume the worst&, but even if it's Noiz 
we're talking about&, I can't deny the possibility&.

Do I go look for him&.&.&.?

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

	SoundPlay("@dm007a",0,450,true);

//����펖�ԃA���[�����J��Ԃ���
	CreateSE("@EFWIN/SE11","se����_���]�^���[_�A���[��01L");//�������u�r�d�Fse����_���]�^���[_�A���[��01L�v
	Request("@EFWIN/SE11", Lock);
	MusicStart("@EFWIN/SE11",0,150,0,1000,null,true);

	$CautionAlarm=true;

//�������u�������H�F�����̓񌾂͌q���ĉ��݂̂Łv
	dm2350Alam();
	Wait(1000);
	SetBacklog("�u��펖�Ԃ��������܂����B�������T����ɒn���K��菇���A�u�ǂɂ��ʘH�Ւf���J�n���܂��v", "voice/dm23/5000010e10", �A�i�E���X);
	SetBacklog("�u�V�X�e�����ꎞ�I�ɒ�~���܂��B�ʘH�ɏo�Ă���X�^�b�t�͑��₩�ɔ��ĉ������B�J��Ԃ��܂��B��펖�Ԃ��������܂����v", "voice/dm23/5000020e10", �A�i�E���X);
//	WaitKey(1000);

//���F���݂̂Ƃ������ƂŃR�����g�A�E�g
//=================================================
//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0020]
//�y�A�i�E���X�z
//<voice name="�A�i�E���X" class="�A�i�E���X" src="voice/dm23/5000010e10">
-This is an emergency&. Five minutes after this message&,
 partition walls will block the passages sequentially from
 floor to floor&, starting from the basement&.-

-Please evacuate the premises immediately&. Staff members
 on the passages should evacuate as soon as possible&.
 I repeat&, this is an emergency&.-

//�y�A�i�E���X�z
//<voice name="�A�i�E���X" class="�A�i�E���X" src="voice/dm23/5000020e10">

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);
=================================================//

{	Fw("fw���t_�ʏ�_shock2");}
//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0021]
//�y���t�z
<voice name="���t" class="���t" src="voice/dm23/5000030a01">
"&.&.&.&.&."


</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0022]
I don't know what the deal is&, but something 
sure is happening&.

&.&.&.I have to go look for Noiz&.

{	CreateSE("SE01","se�l��_����_�ߎC��17");
	MusicStart("SE01",0,500,0,1000,null,false);
	CreateSE("SE02","se�l��_����_�ߎC��05");
	MusicStart("SE02",0,500,0,1000,null,false);}
After gazing at the cube in my hand&, I used the shelf as 
a support and stood up slowly&.


</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

	Fw("fw���t_�ʏ�_pinch");
//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0024]
//�y���t�z
<voice name="���t" class="���t" src="voice/dm23/5000040a01">
"&.&.&.Ngh&."

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);


//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0030]
To be honest&, the burn on my side is considerably painful&. I break out in a cold sweat&. 

But now's not the time to say something like that&.

{	CreateSE("SE01","se����_����_�@�N��01");
	MusicStart("SE01",0,700,0,1000,null,false);}
I activated Ren who was in sleep mode in my bag&.


</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

{	Fw("fwAM�@_�ʏ�_normal");}
//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0032]
//�y�@�z
<voice name="�@" class="�@" src="voice/dm23/5000050a06">
"Aoba&."

{	Fw("fw���t_�ʏ�_hard");}
//�y���t�z
<voice name="���t" class="���t" src="voice/dm23/5000060a01">
"Ren&, things are getting kinda ugly&. I'm in a pretty bad
 shape too&, so I need your support&."

{	Fw("fwAM�@_�ʏ�_normal");}
//�y�@�z
<voice name="�@" class="�@" src="voice/dm23/5000070a06">
"Are you okay?"

{	Fw("fw���t_�ʏ�_hard2");}
//�y���t�z
<voice name="���t" class="���t" src="voice/dm23/5000080a01">
"Can't quite say I am&, but I have to try my best&."

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
	TextBoxDelete(0);

	SetVolumeEX("SE*", 1000, 0, null);

	dm2350_Delete();

	SetVolumeEX("@EFWIN/SE11", 1200, 250, null);

	CreateColorSP("�G����", 25000, "BLACK");
	DrawTransition("�G����", 500, 0, 1000, 100, null, "cg/data/blind_01_00_0.png", true);

	OnBG(10,"bg304052_5_���]�^���[�����G���A�L��02");
	FadeBG(0,true);

	DrawDelete("�G����", 500, 100, null, "blind_01_00_1", true);

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0040]
Holding my side&, I leave the room as fast as I can&.

When I emerged into the hallway&, I could hear the alarm 
much more clearly&.

{	CreateSE("SE01","se����_���]�^���[_�n��01aL");
	MusicStart("SE01",500,400,0,1000,null,false);}
From a distance I heard sounds like the earth was rumbling&,
too&. Maybe it's the sound of the partitions closing&. 

{	SetVolumeEX("SE01", 5000, 0, null);}
Maybe Noiz isn't on the floor anymore?

I placed the cube on my palm&, and tried pushing where its  eyes were&, like Noiz said&.


</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

//������҂�A�ƃE�T�L���[�u�N����
	CreateSE("SE02","se����_�R�C��_���쉹03");
	MusicStart("SE02",0,700,0,1000,null,false);

	Wait(200);

{	Fw("fwAM�E�T�M���h�L_�ʏ�_normal");}
//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0044]
//�y�E�T�M���h�L�z
<voice name="�E�T�M���h�L" class="�E�T�M���h�L" src="voice/dm23/5000081c09">
"You called?"

{	Fw("fw���t_�ʏ�_worry4");}
//�y���t�z
<voice name="���t" class="���t" src="voice/dm23/5000090a01">
"Is Noiz on this floor?"

{	Fw("fwAM�E�T�M���h�L_�ʏ�_normal");}
//�y�E�T�M���h�L�z
<voice name="�E�T�M���h�L" class="�E�T�M���h�L" src="voice/dm23/5000100c09">
"No&."

{	Fw("fw���t_�ʏ�_worry2");}
//�y���t�z
<voice name="���t" class="���t" src="voice/dm23/5000110a01">
"I see&.&.&."

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0050]
Let's go upstairs for now&.&.&.

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

	SetVolumeEX("SE*", 500, 0, null);

//�����t�@�C��["dm2360.nss"]

}
