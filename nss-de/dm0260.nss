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


scene dm0260.nss_MAIN
{
	//CoilMailAdd("���[���i�b�g��","�l��","����",�Y�t�L�薳��,�J���L�薳��)
	CoilMailAdd("chara0010","Haga-san","About what I asked for",true,true);
	CoilMailAdd("chara0020","Koujaku","This Sunday",false,true);
	CoilMailAdd("chara0030","Mizuki","How are you?",false,true);
	CoilMailAdd("chara0040","Granny","Dinner",false,true);
	CoilMailAdd("chara0050","Koujaku","About then",false,true);
	CoilMailAdd("hime0010","Captive Princess","Please save me",true,true);

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
	#ev026�@�����e=true;
	#ev026�@�����ea=true;

	//CoilMailAdd("���[���i�b�g��","�l��","����",�Y�t�L�薳��,�J���L�薳��)
	CoilMailAdd("spm0040","������","New Allmate models soon for sale! Pre-orders will begin tomorrow!",true,true);

	//���B���[�����ǉ��i���X�g���o�Ă��Ȃ��Ƃ��j
	CoilMListOnRead("spm0040");


	//�����[�g�t���O�A�I�����A����GameName
	$PreGameName = $GameName;
	if($START0010==1){	$GameName = "dm0260sl.nss";
	}else {		$GameName = "dm0261.nss";
	}

}


scene dm0260.nss
{

	//���V�[���̓��ɕK���L�q
	$�X�N���v�g�o�[�W���� = " $Revision:  $";
	$�\���� = ModuleFileName();
	$�\���� = $SYSTEM_present_process;
	SystemInit();


//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\

	SoundPlay("@dm012",0,450,true);

	PrintBG("��w�i", 30000);

	OnBG(10,"bg104031_5_���t���");
	FadeBG(0,true);

	CreateSE("SE01","se����_���t������_�J��01");
	MusicStart("SE01",0,700,0,1000,null,false);

	FadeDelete("��w�i", 1000, null, true);

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0010]
I shut the door leading to the veranda and return to the 
room&, lower Ren to the bed and lay down next to him&.

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

	CreateSE("SE02","se����_�x�b�h_�Q��01");
	MusicStart("SE02",0,700,0,1000,null,false);

	CreatePlainSP("�G��", 990);
	Shake("�G��", 200, 0, 5, 0, 0, 500, null, true);
	Delete("�G��");

	Wait(500);

	Fw("fw���t_�ʏ�_worry");
//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0011]
//�y���t�z
<voice name="���t" class="���t" src="voice/dm02/6000010a01">
"Rhyme&.&.&. huh&."

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);


//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0012]
Did I encounter a Drive-Byer after all?

When it happened&, Ren appeared in his online mode form&. He 
also fought according to my instructions&.

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

	Fw("fw���t_�ʏ�_sad");
//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0013]
//�y���t�z
<voice name="���t" class="���t" src="voice/dm02/6000020a01">
"&.&.&.Something&, set&. &.&.&.What was it?"

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0020]
During the Rhyme&, my mouth moved on its own like somebody 
had taken over my body&. What was that?

But that feeling&.&.&. I feel like I know it&.

I don't know why I think so but&, it's like&.&.&.

It resembled a feeling that I have when I invite customers 
to the store&.&.&.

That feeling when I know what to say to make the other do 
what I want&.

Have Drive-Byers always appeared so frequently? Let's do 
a little research&.

Although I don't want to get involved too deeply&.&.&.

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

	CreateSE("SE01","se����_�R�C��_��M���t");
	MusicStart("SE01",0,700,0,1000,null,false);

	Wait(500);

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0021]
&.&.&.A message&.

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
	TextBoxDelete(0);

//�R�C�����[���{�b�N�X�\��
//���o�l�F������
//�����F�ŐV�^�̃I�[�����C�g���ɔ����I�@������s�\��J�n�I
//�{����\��

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

	//�҂�
	CoilWait();

	//���B�V�K���[���ǉ�//dm1340a
	CoilMailAdd2("spm0040","������","New Allmate models soon for sale! Pre-orders will begin tomorrow!",true,false);

	//�҂�
	CoilWait();

	Fw("fw���t_�ʏ�_normal2");
//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0030]
//�y���t�z
<voice name="���t" class="���t" src="voice/dm02/6000030a01">
"The latest Allmate models&, huh?"

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0031]
It was a direct message&.

New Allmates appear one after another&.

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
	TextBoxDelete(0);

	//���w�ėp�x�R�C�����[�P�wCoilDelete("�w��̃R�C����",�b��,���������X,���������Y)�x//�����W�w��͐�΂̂�
	CoilDelete("CoilMList",300,-50,370);
	//���R�C���҂�
	CoilWait();

//	CoilMListDelete();

	//�҂�
	CoilWait();

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0032]
I briefly look over the contents then close the Coil 
screen&.

I've always been so attached to things that I never want 
to give them up&, but not everyone else is like that&.

&.&.&.That's right&. I have to check Ren's condition&.
I'm worried about the damage he took in Rhyme&.

{
	SetVolumeEX("@dm*", 3000, 0, null);

	CreateSE("SE01","se����_�x�b�h_�Q��01");
	MusicStart("SE01",0,700,0,1400,null,false);

	CreateTextureEX("�G�w�i110", 110, 0, -556, "cg/bg/l/bg104031_5_���t���_l.jpg");
	Move("�G�w�i110", 500, 0, -572, Dxl1, false);
	Fade("�G�w�i110", 500, 1000, null, true);

	CreateSE("SE02","se�l��_����_�ߎC��05");
	MusicStart("SE02",0,700,0,800,null,false);
	SetVolumeEX("SE*", 1000, 0, null);
}

I get up and reseat myself on the bed&, put the blue 
lump on my knees&, and start him up&.

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

	CreateSE("SE01","se����_����_�@�N��01");
	MusicStart("SE01",0,700,0,1000,null,false);

	SoundPlay("@dm013",0,450,true);

	Wait(500);

	Fw("fwAM�@_�ʏ�_normal");
//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0040]
//�y�@�z
<voice name="�@" class="�@" src="voice/dm02/6000040a06">
"Aoba&."

{
	Fw("fw���t_�ʏ�_normal");
}
//�y���t�z
<voice name="���t" class="���t" src="voice/dm02/6000050a01">
"Good morning&."

{
	Fw("fwAM�@_�ʏ�_normal");
}
//�y�@�z
<voice name="�@" class="�@" src="voice/dm02/6000060a06">
"Good morning&."

{
	Fw("fw���t_�ʏ�_normal2");
}
//�y���t�z
<voice name="���t" class="���t" src="voice/dm02/6000070a01">
"I'll examine you a bit now&."


</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0049]
Because Ren is an old model&, restoration would be trouble 
if full-scale malfunction appeared&.

He has to be frequently maintained and checked&.

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0050]
I hold a long cable starting from the desktop computer 
and push aside Ren's neck fur to connect the cable to the  port&.

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
	TextBoxDelete(0);

//���R�C��_�^�b�`�u���E�U���N�����A�@�̃G���W�����Ď�����C���^�[�t�F�C�X��\��

	//���@�R�C�����o�ݒu�P
	CoilIntoSet();
	//���@�R�C�����o�ݒu�Q
	CoilStartSet();
	//���J�@�����e
	CoilRenSet(382,150);

	//���@�R�C�����o�\��
	CoilStartFade();
	//���J�@�����e�\��
	CoilRenFade();

	//�҂�
	CoilWait();//WaitKey(16);

	//���J�@�����e�X�^�[�g
	CoilRenStart();

	Wait(2000);

	//���J�@�����e����
	CoilRenComp();

	Wait(500);

	//�~�D�J�@�����e���[
	$coilintoON=true;
	CoilRenDelete();

	//���R�C���҂�
	CoilWait();

	//���w�ėp�x�R�C�����[�P�wCoilAllDelete(�b��,���������X,���������Y)�x//�����W�w��͐�΂̂�
	//CoilAllDelete(300,400,350);

	//�@�����e�F���C���t���[���J���F�ʏ�
	SetOpenMaintenance(1);

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0051]
I start up a touch browser with the Coil and the 
interface that supervises Ren's engine is displayed&.

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
	TextBoxDelete(0);

	//�@�����e�F�T�u���j�^�[�J��(1��2)
	SetOpenSubMaintenance(1);

	Fw("fw���t_�ʏ�_normal2");
//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0052]
//�y���t�z
<voice name="���t" class="���t" src="voice/dm02/6000100a01">
"Hm&.&.&. Maybe the reaction speed of the reflection's
 decreased bit&."

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

	CreateSE("SE01","se����_�h�A_����01");
	MusicStart("SE01",0,700,0,1800,null,false);

	SetVolumeEX("SE*", 3000, 0, null);

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0053]
I grab a tool box that I'd thrown on the floor&, remove 
the lid&, take out a 10cm square screwdriver&, and push asideRen's fur again&.

Although Allmates can fundamentally be fixed through the 
touch browser's control panel&, Ren is an old model&, and I 
need to look inside of him too&.

I take a stock of new chips out of the tool box and use 
tweezers to replace Ren's old chip with a new one&.

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
	TextBoxDelete(0);

	//�@�����e�F����
	CloseMaintenance();

	CoilNewDelete(400,100);

	//�҂�
	CoilWait();

	Fw("fw���t_�ʏ�_normal");
//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0060]
//�y���t�z
<voice name="���t" class="���t" src="voice/dm02/6000110a01">
"This should be enough&."

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0061]
I close the lid and control panel&, remove the cable and 
lift Ren into my arms&.

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
	TextBoxDelete(0);

	CreateSE("SE01","se�l��_����_�ߎC��05");
	MusicStart("SE01",0,700,0,1000,null,false);
	SetVolumeEX("SE*", 1000, 0, null);

	CreateTextureEX("�G�d�u110", 110, Center, Middle, "cg/ev/ev026�@�����e.jpg");
	Fade("�G�d�u110", 1000, 1000, null, true);

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0062]
//�y���t�z
<voice name="���t" class="���t" src="voice/dm02/6000120a01">
"How is it? Any place you're not feeling well?"

//�y�@�z
<voice name="�@" class="�@" src="voice/dm02/6000130a06">
"&.&.&.&.&."

//�y���t�z
<voice name="���t" class="���t" src="voice/dm02/6000140a01">
"Hm?"

//�y�@�z
<voice name="�@" class="�@" src="voice/dm02/6000150a06">
"There is some sense of incongruity&. However&, it's within   the allowable range&."

//�y���t�z
<voice name="���t" class="���t" src="voice/dm02/6000160a01">
"I see&. Well&, I only changed the chip&. Tell me right away   if any malfunction appears&."

//�y�@�z
<voice name="�@" class="�@" src="voice/dm02/6000170a06">
"Understood&."

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
	TextBoxDelete(0);

	CreateTextureEX("�G�d�u112", 112, -250, -268, "cg/ev/m/ev026�@�����ea_m.jpg");
	CreateTextureEX("�G�d�u111", 111, -250, -205, "cg/ev/m/ev026�@�����e_m.jpg");

	Move("�G�d�u111", 1000, -250, -268, Dxl3, false);
	Fade("�G�d�u111", 1000, 1000, Dxl1, true);

	CreateSE("SE01","se�l��_����_�ߎC��22");
	MusicStart("SE01",0,500,0,1000,null,false);
	SetVolumeEX("SE*", 900, 0, null);

	Fade("�G�d�u112", 1000, 1000, null, true);
	Delete("�G�d�u110");

	Wait(500);

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0070]
I stroke Ren's back as he answers me&, and I place my 
forehead to his tiny one&.

I forget how long it's been since we started to do this&, 
but I make sure to do this every time I do maintenance on 
Ren&. It's like a charm&.

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0071]
//�y���t�z
<voice name="���t" class="���t" src="voice/dm02/6000180a01">
"Thank you&, as always&."

//�y�@�z
<voice name="�@" class="�@" src="voice/dm02/6000190a06">
"The pleasure is mine&."

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0080]
//�y���t�z
<voice name="���t" class="���t" src="voice/dm02/6000200a01">
"I'll count on you in the future&, too&."

//�y�@�z
<voice name="�@" class="�@" src="voice/dm02/6000210a06">
"The pleasure is mine&."

{
	Fade("�G�d�u112", 500, 0, null, true);
}
//�y���t�z
<voice name="���t" class="���t" src="voice/dm02/6000220a01">
"&.&.&.You always answer like that&."

//�y�@�z
<voice name="�@" class="�@" src="voice/dm02/6000230a06">
"Is it strange?"

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

//�����t�@�C��["dm0260sl.nss"]�����d�c�N���A��o��
//�����t�@�C��["dm0261.nss"]

//	ClearFadeAll(1000, true);

}
