//<continuation number="180">
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


scene dm2330lv.nss_MAIN
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
	#ev233�m�C�Y������񂹂�=true;

	//�����[�g�t���O�A�I�����A����GameName
	$PreGameName = $GameName;
	$GameName = "dm2340lv.nss";

}


scene dm2330lv.nss
{

	//���V�[���̓��ɕK���L�q
	$�X�N���v�g�o�[�W���� = " $Revision:  $";
	$�\���� = ModuleFileName();
	$�\���� = $SYSTEM_present_process;
	SystemInit();


//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\

	SoundPlay("@dm012",0,450,true);

	PrintBG("��w�i", 30000);

	CreateTextureSP("�G�w�i100", 100, -515, -572, "cg/bg/l/bg304081_5_���]�^���[���u����_l.jpg");

	FadeDelete("��w�i", 0, null, true);

	CreateSE("SE01","se�l��_����_����01");
	MusicStart("SE01",0,700,0,1000,null,false);

	CreateTextureEX("�G�w�i101", 101, 0, -50, "cg/bg/l/bg304081_5_���]�^���[���u����_l.jpg");
	Move("�G�w�i101", 1000, @0, @50, Dxl1, false);
	Fade("�G�w�i101", 1000, 1000, null, true);

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0010]
Saying that&, I stretch out my arm and pull Noiz's head to  my chest&.

{
	Fw("fw�m�C�Y_�ʏ�_angry");
}
//�y�m�C�Y�z
<voice name="�m�C�Y" class="�m�C�Y" src="voice/dm23/3000010a03">
"&.&.&.Hey&."

{
	Fw("fw���t_�ʏ�_normal2");
}
//�y���t�z
<voice name="���t" class="���t" src="voice/dm23/3000020a01">
"It's okay&. Just stay like this&."

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0011]
He resists at first&, but little by little he relaxes 
himself&.

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
	TextBoxDelete(0);

	CreateSE("SE01","se�l��_����_�ߎC��05");
	MusicStart("SE01",0,700,0,800,null,false);

	SetVolumeEX("SE*", 1000, 0, null);

	CreateTextureEX("�G�d�u109", 109, Center, Middle, "cg/ev/ev233�m�C�Y������񂹂�.jpg");
	Fade("�G�d�u109", 1000, 1000, null, true);
	Delete("�G�w�i101");

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0012]
I hold Noiz's head firmly to my chest&.

I'm positive that with the kind of guy Noiz is&, actions 
speaking way louder than words definitely applies&.

When I was younger and I cried&, Granny would always do the same for me&.

For whatever reason&, whenever I felt Granny's warmth&, I'd  always calm down&.

So maybe it'll work on Noiz&, too&.

Especially since he doesn't know the warmth of other 
people&.

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0020]
//�y���t�z
<voice name="���t" class="���t" src="voice/dm23/3000030a01">
"There may be only one thing I can teach you&. Maybe&.&.&. the  fact that this world is not so bad as you think it is&."

//�y�m�C�Y�z
<voice name="�m�C�Y" class="�m�C�Y" src="voice/dm23/3000040a03">
"I haven't thought about what kind of place this world is
 in the first place&. I'm not interested&."

//�y���t�z
<voice name="���t" class="���t" src="voice/dm23/3000050a01">
"That's because you just don't know&. Because you have an
 awful lot of things you don't know about&."

//�y�m�C�Y�z
<voice name="�m�C�Y" class="�m�C�Y" src="voice/dm23/3000060a03">
"Is there a reason I should know?"

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0030]
//�y���t�z
<voice name="���t" class="���t" src="voice/dm23/3000070a01">
"To put it in your words&, it's more profitable to know
 rather than not knowing&, right?"

//�y�m�C�Y�z
<voice name="�m�C�Y" class="�m�C�Y" src="voice/dm23/3000080a03">
"Then are you going to teach me how to do this?"

//�y���t�z
<voice name="���t" class="���t" src="voice/dm23/3000090a01">
"&.&.&.&.&."

Surprised&, I look down to Noiz&.

I didn't expect him to ever say anything like that&.

A slightly ticklish warmth comes over me and I put more 
thought into how carefully I hold Noiz's head&.

{
	CreateSE("SE01","se����_�x�b�h_�Q�Ԃ�");
	MusicStart("SE01",0,700,0,1400,null,false);

	CreateTextureEX("�G�d�u110", 110, -495, -283, "cg/ev/m/ev233�m�C�Y������񂹂�_m.jpg");
	Move("�G�d�u110", 800, -399, -283, Dxl1, false);
	Fade("�G�d�u110", 800, 1000, null, true);
	Delete("�G�d�u109");
}
//�y���t�z
<voice name="���t" class="���t" src="voice/dm23/3000100a01">
"Let's see&. If you think about me a little more&, and
 promise not to do anything reckless&, I will&."

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0040]
//�y���t�z
<voice name="���t" class="���t" src="voice/dm23/3000110a01">
"Because&, I'm like a big brother since I'm older anyway&."

//�y�m�C�Y�z
<voice name="�m�C�Y" class="�m�C�Y" src="voice/dm23/3000120a03">
"That's kinda annoying&."

//�y���t�z
<voice name="���t" class="���t" src="voice/dm23/3000130a01">
"Shut up&."

I can't help but smile&.

I felt like I understood Noiz a little better&, and it made me kinda happy&.

//�y�m�C�Y�z
<voice name="�m�C�Y" class="�m�C�Y" src="voice/dm23/3000140a03">
"&.&.&.It's a little too hot&."

When he mutters something and I release my hand from his 
head&, Noiz gets up and sits on the floor&.

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

	CreateSE("SE01","se�l��_����_�ߎC��21");
	MusicStart("SE01",0,500,0,800,null,false);

	SetVolumeEX("SE*", 2000, 0, null);

	CreateSE("SE02","se�l��_����_�ߎC��02");
	MusicStart("SE02",0,400,0,1400,null,false);

	Move("�G�d�u110", 500, @0, @50, null, false);
	FadeDelete("�G�d�u110", 500, null, true);

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0050]
I sit up and lean on a nearby shelf&.

{
	Fw("fw���t_�ʏ�_normal2");
}
//�y���t�z
<voice name="���t" class="���t" src="voice/dm23/3000150a01">
"So&. Can you make a promise?"

{
	Fw("fw�m�C�Y_�ʏ�_normal3");
}
//�y�m�C�Y�z
<voice name="�m�C�Y" class="�m�C�Y" src="voice/dm23/3000160a03">
"I don't understand things like that&.&.&. I don't know&. If
 I feel like it&."

{
	Fw("fw���t_�ʏ�_normal2");
}
//�y���t�z
<voice name="���t" class="���t" src="voice/dm23/3000170a01">
"Then that means you don't know when you want me to teach
 you&, right?"

{
	Fw("fw�m�C�Y_�ʏ�_normal3");
}
//�y�m�C�Y�z
<voice name="�m�C�Y" class="�m�C�Y" src="voice/dm23/3000180a03">
"I don't know&."

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0060]
It's the same as always&, those blunt&, uninterested 
responses&, but&.&.&.

Noiz has been avoiding eye contact this entire time&.

Wait&, is he&.&.&. embarrassed?

If so&, then he might've actually taken a bit of what I 
said to heart&.


</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

//�����t�@�C��["dm2340lv.nss"]

}
