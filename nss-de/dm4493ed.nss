//<continuation number="210">
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


scene dm4493ed.nss_MAIN
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
	#ev449�N���ABAD�d�c=true;

	//�����[�g�t���O�A�I�����A����GameName
	$PreGameName = $GameName;
	$GameName = "dm9999.nss";

	//���G���h���[��
	PreSetRoll(5);
	TheEND(5);

#BDED4=1;//�N���A�o�b�h�G���h�t���O�擾

}


scene dm4493ed.nss
{

	//���V�[���̓��ɕK���L�q
	$�X�N���v�g�o�[�W���� = " $Revision:  $";
	$�\���� = ModuleFileName();
	$�\���� = $SYSTEM_present_process;
	SystemInit();


//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\

	PrintBG("��w�i", 30000);

	CreateColorSP("�G�F��", 5000, "000000");

	CreateTextureEX("�G�d�u101L", 101, -1024, -576, "cg/ev/l/ev449�N���ABAD�d�c_l.jpg");
	CreateTextureEX("�G�d�u101", 101, Center, Middle, "cg/ev/ev449�N���ABAD�d�c.jpg");
	CreateTextureEX("�G�d�u100", 100, Center, Middle, "cg/ev/ev449�N���ABAD�d�ca.jpg");
	Zoom("�G�d�u100", 0, 2000, 2000, null, true);
	Fade("�G�d�u100", 0, 1000, null, true);
	Request("�G�d�u100", Smoothing);
	SetBlur("�G�d�u100", true, 2, 500, 200, false);

	MoveFTP1("@�G�d�u100",15000,10,8);

	FadeDelete("��w�i", 1000, null, true);

	Wait(2000);

	CreateSE("SE01","se�l��_����_����03L");
	MusicStart("SE01",7000,500,0,700,null,true);

	Wait(2000);

	FadeDelete("�G�F��", 4000, null, true);

	Wait(1000);

//������ʓ]��
//���v���`�i�W�F�C���n��
//�������A�ƊK�i���~��Ă����N���A

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0010]
&.&.&.&.&.

{
	SetVolumeEX("SE*", 3000, 0, null);
}
&.&.&.These footsteps&.

They're Clear's&.

I raise my head&, about to doze off&.

{
	CreateSE("SE01","se�l��_����_����03L");
	MusicStart("SE01",0,650,0,700,null,true);
}
I can only sense Clear coming closer&, as I can't see 
anything but black&.

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
	TextBoxDelete(0);

	SetVolumeEX("SE*", 500, 0, null);

	Wait(1000);

	CreateSE("SE02","se����_�h�A�S_���J��01a");
	MusicStart("SE02",0,700,0,1000,null,false);

	Wait(3000);

	CreateSE("SE02","se����_�h�A�S_���J��01b");
	MusicStart("SE02",0,700,0,1000,null,false);

	Wait(1000);

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0011]
//���r�d�F��������ƘS���J����
//�y�N���A�z
<voice name="�N���A" class="�N���A" src="voice/dm44/9300010a04">
"&.&.&.Good morning&, Aoba-san&."

//�y�N���A�z
<voice name="�N���A" class="�N���A" src="voice/dm44/9300020a04">
"The weather's nice out today&. But even if I told
 you that you wouldn't understand it in here&."

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

	Wait(500);

	CreateSE("SE01","se�l��_����_�ߎC��05");
	MusicStart("SE01",0,700,0,1300,null,false);
	SetVolumeEX("SE*", 1000, 0, null);

	Wait(1500);

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0020]
//�y���t�z
<voice name="���t" class="���t" src="voice/dm44/9300030a01">
"&.&.&.&.&."

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0021]
Clear gently caresses my cheek&.
His touch is cold&.

{
	CreateSE("SE02","se�l��_����_����01");
	MusicStart("SE02",0,500,0,800,null,false);
}
He moves around behind me&.
He hugs me tenderly from behind&.

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0022]
//�y�N���A�z
<voice name="�N���A" class="�N���A" src="voice/dm44/9300040a04">
"How do you feel? Does it hurt anywhere?"

{
//�����̉�
//�����݁FSE�@���p
	CreateSE("SE01","se�l��_����_�x���g�O��01");
	MusicStart("SE01",0,700,0,600,null,false);
}
//�y���t�z
<voice name="���t" class="���t" src="voice/dm44/9300050a01">
"&.&.&.&.&."

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0030]
//�y�N���A�z
<voice name="�N���A" class="�N���A" src="voice/dm44/9300060a04">
"You look well&. That's good&. I'd be sad if you were hurt&,
 Aoba-san&."

//�y�N���A�z
<voice name="�N���A" class="�N���A" src="voice/dm44/9300070a04">
"Little by little&, we'll make progress&. It's not something
 that you can rush&. Right?"

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

	CreateSE("SE01","se�l��_����_�ߎC��05");
	MusicStart("SE01",0,700,0,800,null,false);
	SetVolumeEX("SE*", 1800, 0, null);

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0031]
Clear rubs the area around my chest and abdomen&, and then 
my thighs&.&.&. There he starts to touch me more tenderly&.

{
	SoundPlay("@dm014",0,450,true);
}
When did I lose these limbs?

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
	TextBoxDelete(0);

//�����o�F������e���\���������ł��B
//�����݁F���o�@�܂��S�̌����Ȃ��@�����o��̂���̂���
	Move("�G�d�u101L", 60000, -551, 0, null, false);
	Fade("�G�d�u101L", 1000, 1000, null, true);

	MoveFTP1stop();
	Delete("�G�d�u100");

	Wait(1000);

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0032]
//�y�N���A�z
<voice name="�N���A" class="�N���A" src="voice/dm44/9300080a04">
"Aoba-san&.&.&."

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0033]
He calls my name&, his voice dripping with ecstasy&.

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0040]
//�y�N���A�z
<voice name="�N���A" class="�N���A" src="voice/dm44/9300090a04">
"I'm not human&. But I want to always be with you&,
 Aoba-san&."

//�y�N���A�z
<voice name="�N���A" class="�N���A" src="voice/dm44/9300100a04">
"All humans' lives end at some point&, right? I don't ever
 want to lose you&. That's why&.&.&."

//�y�N���A�z
<voice name="�N���A" class="�N���A" src="voice/dm44/9300110a04">
"I asked Toue to turn you into something like me&."

//�y�N���A�z
<voice name="�N���A" class="�N���A" src="voice/dm44/9300120a04">
"When I gave him the data&, he told me I could do as I
 liked&."

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

	CreateSE("SE01","se�l��_����_�ߎC��05");
	MusicStart("SE01",0,800,0,800,null,false);
	SetVolumeEX("SE*", 1000, 0, null);

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0041]
Clear holds my body close to him and buries his face in 
my hair&.

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0042]
//�y�N���A�z
<voice name="�N���A" class="�N���A" src="voice/dm44/9300130a04">
"I can't become human&. So I want to make you the same as
 me&."

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0050]
//�y�N���A�z
<voice name="�N���A" class="�N���A" src="voice/dm44/9300140a04">
"But you'll always be beautiful&.&.&. No&, I want to make you 
 even more beautiful&. Like a doll&."

//�y�N���A�z
<voice name="�N���A" class="�N���A" src="voice/dm44/9300150a04">
"So that's why you can't have too much&. Because a doll
 doesn't need a will of its own&."

//�y�N���A�z
<voice name="�N���A" class="�N���A" src="voice/dm44/9300160a04">
"Having arms and legs gives you a sense of freedom&, so
 they're not necessary&."

//�y�N���A�z
<voice name="�N���A" class="�N���A" src="voice/dm44/9300170a04">
"Both your eyes and your legs are done&, so next are your
 arms&. I can't have you using your arms freely&."


</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\

	TextBoxDelete(0);

	CreateSE("SE01","se�l��_����_����01");
	MusicStart("SE01",0,700,0,1200,null,false);
	CreateSE("SE02","se�l��_����_����01");
	MusicStart("SE02",0,500,0,1200,null,false);
	SetVolumeEX("SE02", 1000, 0, null);

	Move("�G�d�u101L", 2000, 0, -148, AxlDxl, true);

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0051]
He takes my hand away from gripping the bars and pulls it 
close to him&, kissing it&. Seconds later&, he plunges his 
teeth into my wrist&.


</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

//���r�d�F���̉�
//�����݁FSE�@���p
	CreateSE("SE01","se�l��_����_�x���g�O��01");
	MusicStart("SE01",0,700,0,600,null,false);

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0052]
//�y���t�z
<voice name="���t" class="���t" src="voice/dm44/9300180a01">
"&.&.&.!"

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0060]
The faint scent of blood appears&. 
He licks the bitten area with his tongue&.

The chain on my neck makes a dry clinking noise&.

I can't feel any pain&, any coldness&.&.&. or any warmth&.

I'm only something that breathes&.

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0061]
//�y�N���A�z
<voice name="�N���A" class="�N���A" src="voice/dm44/9300190a04">
"I'm looking forward to it&. Soon&, Aoba-san will be as truly beautiful as I've wished for&."

//�y�N���A�z
<voice name="�N���A" class="�N���A" src="voice/dm44/9300200a04">
"My one and only Aoba-san&.&.&. I'm looking forward to it&."

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\

	CreateTextureEX("�G�d�u100", 1000, Center, Middle, "cg/ev/ev449�N���ABAD�d�ca.jpg");
	Zoom("�G�d�u100", 0, 2000, 2000, null, true);
	SetBlur("�G�d�u100", true, 2, 500, 200, false);
	MoveFTP1("@�G�d�u100",15000,10,8);

	Fade("�G�d�u100", 1000, 1000, null, false);

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0062]
Clear whispers into my ear with his entrancing voice&.

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0070]
Clear isn't the same Clear he once was&.

After he was taken away by ��&, he was repaired&, but also 
changed&, by Toue&.

So he returned to his original state&.

&.&.&.But I don't care any more&.

To me&, someone who is unable to move at all&, Clear is my 
entire world&.

If Clear is happy&, then&.&.&.<k>
I don't need to care about anything else&.

{
	SetVolumeEX("@dm*", 3000, 0, null);
}
Everything is how Clear wants it to be&.&.&.

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
	TextBoxDelete(0);

	Fade("�G�d�u101", 0, 1000, null, true);
	Fade("�G�d�u100", 1800, 0, null, true);
	MoveFTP1stop();
	Delete("�G�d�u100");

	Wait(1500);

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0070a]
//�y�N���A�z
<voice name="�N���A" class="�N���A" src="voice/dm44/9300210a04">
"Aoba-san&.&.&."

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
	TextBoxDelete(0);

	SoundPlay("@dmedbd04",0,450,true);

	Wait(3000);

	ClearFadeAll(4000, true);

	Wait(2000);

//�����t�@�C��["dm9999.nss"]

}
