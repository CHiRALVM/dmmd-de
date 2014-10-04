//<continuation number="400">
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


scene dm3500.nss_MAIN
{
//■超速設定
	if(($SYSTEM_skip && #SYSTEM_skip_express && $AllRead) || ($SYSTEM_skip && #SYSTEM_skip_express && #SYSTEM_skip_absolute)){
		SkipOut();
	}else{
		$MainGameName="@->"+$GameName;
		GameMainSet();
		call_scene $MainGameName;
		GameMainSet2();
	}

//■選択肢スクリプト及びフラグ設定
	//▼イベントＣＧ
	#イベントファイル名=true;

	//▼ルートフラグ、選択肢、次のGameName
	$PreGameName = $GameName;
	$GameName = "dm3510.nss";

}


scene dm3500.nss
{

	//■シーンの頭に必ず記述
	$スクリプトバージョン = " $Revision:  $";
	$構成名 = ModuleFileName();
	$構文名 = $SYSTEM_present_process;
	SystemInit();


//―――――――――――――――――――――――――――――――――――――――

	PrintBG("上背景", 30000);
	CreateColorSPadd("絵色白", 5000, "FFFFFF");
	OnBG(10,"bg304091_5_東江タワー中ホール");
	FadeBG(0,true);
	Delete("上背景");

	CreateTextureSP("絵上", 1000, Center, Middle, "cg/bg/bg304091_5_東江タワー中ホール.jpg");

	FadeDelete("絵色白", 1000, null, true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0010]
The room was the size of a mid-size hall&. 

The sight of the person standing in the center of it causes
me to freeze up immediately&.


</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
	TextBoxDelete(0);

	CreateTextureSP("絵bg", 100, Center, Middle, "cg/bg/bg304091_5_東江タワー中ホール.jpg");
	Zoom("絵bg", 0, 2000, 2000, null, true);
	SetShade("絵bg", HEAVY);

	CreateTextureSP("絵st", 100, 0, 0, "cg/st/l/st東江_通常_normal_l.png");
	Move("絵bg", 0, -43, -64, null, true);
	Move("絵st", 0, 190, -402, null, true);

	Move("絵bg", 3000, -43, 109, DxlAuto, false);
	Move("絵st", 3000, 190, -98, DxlAuto, false);
	Fade("絵上", 1000, 0, null, true);

	Wait(2200);

	CreatePlainSP("絵板写", 5000);
	Delete("絵bg");
	Delete("絵st");
	Delete("絵上");

	St("C",740, @0,@0,"st東江_通常_normal");
	FadeSt("C",0,true);

	SoundPlay("@dm019",0,450,true);


	FadeDelete("絵板写", 500,null,true);

	Fw("fw蒼葉_通常_angry");
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0012]
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm35/0000010a01">
"&.&.&.Toue&."


</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0013]
Toue comfortably stands there with both hands behind his 
back&, and a thin smile rises to his face when he sees us&.

As if he was waiting for us&.

He looks the same as when he was on TV&.&.&. No&, he seems 
more crafty in person&.

He looks like a gentleman on the outside&, but the air 
around him doesn't feel the same&.

He gives off the impression of a man who uses a smile to 
hide a knife under his jacket&.

Two masked people are standing behind him&. They must be 
his personal security&.


</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

{	St("C",740, @0,@0,"st東江_通常_normal");
	FadeSt("C",200,true);}
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0018]
//【東江】
<voice name="東江" class="東江" src="voice/dm35/0000020b02">
"I knew you'd come at some point&, but now I have the both
 of you here&. I've been waiting&, Mink-kun&. And for you as
 well&, Aoba-kun&."

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	Fw("fw蒼葉_通常_shock2");
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0020]
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm35/0000030a01">
"!"


</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0021]
He knows who I am? And he knows Mink too?

Even though we've never met before&.&.&.


</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	Fw("fw蒼葉_通常_angry");
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0022]
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm35/0000040a01">
"Why do you know my name&.&.&.?"

{	St("C",740, @0,@0,"st東江_通常_think");
	FadeSt("C",200,true);}
//【東江】
<voice name="東江" class="東江" src="voice/dm35/0000050b02">
"The moment someone walks into Platinum Jail&, their info
 is sent here to Oval Tower&. So&, in short&, I've been
 receiving news on you two for quite a while&."

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0024]
Toue flashes the two of us a questionable smile&.

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0030]
I look to Mink and see his expression burning with anger&, 
similar to the time when he was watching Toue on TV&.

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	Fw("fwミンク_通常_angry2");
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0031]
//【ミンク】
<voice name="ミンク" class="ミンク" src="voice/dm35/0000060a05">
"&.&.&.Asshole&, you knew what we were doing and you didn't
 even try to stop us?"

{	Fw("fwミンク_通常_angry2");}
//【ミンク】
<voice name="ミンク" class="ミンク" src="voice/dm35/0000070a05">
"I thought that a bastard like you would have done
 everything to stop us&. But you didn't do anything at all&."

{	St("C",740, @0,@0,"st東江_通常_normal");
	FadeSt("C",200,true);}
//【東江】
<voice name="東江" class="東江" src="voice/dm35/0000080b02">
"Exactly&. I've been observing you ever since you escaped
 out of prison&."

{	Fw("fw蒼葉_通常_shock2");}
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm35/0000090a01">
"!"

{	Fw("fwミンク_通常_angry2");}
//【ミンク】
<voice name="ミンク" class="ミンク" src="voice/dm35/0000100a05">
"So you know why I'm here&."

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	St("C",740, @0,@0,"st東江_通常_normal");
	FadeSt("C",0,true);
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0040]
//【東江】
<voice name="東江" class="東江" src="voice/dm35/0000110b02">
"Yes&, of course&. The proud spirit and only survivor of your relatives&."

{	Fw("fwミンク_通常_pain");}
//【ミンク】
<voice name="ミンク" class="ミンク" src="voice/dm35/0000120a05">
"&.&.&.&.&."

{	St("C",740, @0,@0,"st東江_通常_serious");
	FadeSt("C",200,true);}
//【東江】
<voice name="東江" class="東江" src="voice/dm35/0000130b02">
"Speaking of which&, I'd meant to tell you earlier&.&.&. I am
 extremely sorry&. I would like to apologize now for things
 regarding your family&."

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0043]
&.&.&.At that moment&, the air around Mink changed&.

As if he was spreading the flames&, an evident bloodthirst 
flooded over&.

This is the first time Mink has ever so clearly shown his 
emotions&. I can tell that something serious has happened 
between him and Toue&.

Is this the reason why he's here&.&.&.?

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	St("C",740, @0,@0,"st東江_通常_normal2");
	FadeSt("C",200,true);
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0050]
//【東江】
<voice name="東江" class="東江" src="voice/dm35/0000140b02">
"Although it was for research purposes&, I am deeply sorry
 for having used your family as victims for such an
 experiment&."

{	St("C",740, @0,@0,"st東江_通常_serious");
	FadeSt("C",200,true);}
//【東江】
<voice name="東江" class="東江" src="voice/dm35/0000150b02">
"However&, your people had such rare abilities kept to
 themselves&. The medical plants they would boil for
 medicine for generations&.&.&."

//【東江】
<voice name="東江" class="東江" src="voice/dm35/0000160b02">
"You could drink it or turn it into something like tobacco
 and smoke it&. And when you would inhale the fumes&, it
 would manipulate your body odor&."

//【東江】
<voice name="東江" class="東江" src="voice/dm35/0000170b02">
"Our main goal was the healing property of it&, but people
would gain a sort of dependancy on it like with narcotics&."

{	St("C",740, @0,@0,"st東江_通常_think");
	FadeSt("C",200,true);}
//【東江】
<voice name="東江" class="東江" src="voice/dm35/0000180b02">
"An illusion caused by the sense of smell&. Something that
 alters peoples' minds&. I had such an extraordinary
 interest in it&."

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	St("C",740, @0,@0,"st東江_通常_normal");
	FadeSt("C",200,true);
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0060]
//【東江】
<voice name="東江" class="東江" src="voice/dm35/0000190b02">
"According to rumors&, the efficacy of the drug would
 enhance with concentrations of your blood&. And if people
 were to ingest it&, it would put them into a trance-like
 state&."

{	St("C",740, @0,@0,"st東江_通常_serious");
	FadeSt("C",0,true);}
//【東江】
<voice name="東江" class="東江" src="voice/dm35/0000200b02">
"However&, only one of you knew the method of production
 to it and would not comply&. I believe it was a precious
 formula granted by God?"

//【東江】
<voice name="東江" class="東江" src="voice/dm35/0000210b02">
"You all were so united&, your faith in your God so firm&.
 So we had no choice but to analyze your body odors&."

{	St("C",740, @0,@0,"st東江_通常_normal");
	FadeSt("C",200,true);}
//【東江】
<voice name="東江" class="東江" src="voice/dm35/0000220b02">
"The ingredients used to bewilder peoples' minds were
 somehow created inside of the body&."

{	Fw("fw蒼葉_通常_worry3");}
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm35/0000230a01">
"&.&.&.&.&."

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0070]
Analyzing their body odor&.&.&.

Toue said earlier that he "used his family as victims for 
such an experiment&."

So that means&.&.&.
He killed them to examine them?

No&.&.&.

But now I can understand Mink's unusual rage&.

His entire family was killed&.
By Toue&.


</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	Fw("fwミンク_通常_serious");
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0075]
//【ミンク】
<voice name="ミンク" class="ミンク" src="voice/dm35/0000240a05">
"&.&.&.&.&."


</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0076]
Mink stares at Toue coldy and silently&.

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	St("C",740, @0,@0,"st東江_通常_serious");
	FadeSt("C",200,true);
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0080]
//【東江】
<voice name="東江" class="東江" src="voice/dm35/0000250b02">
"But in the end&, I still couldn't understand anything&.
 Our cutting-edge technology still couldn't explain your
 secret arts&."

{	St("C",740, @0,@0,"st東江_通常_normal");
	FadeSt("C",200,true);}
//【東江】
<voice name="東江" class="東江" src="voice/dm35/0000260b02">
"Living things are wonders&. Sometimes there are miracles
 that science can't explain&."

{	St("C",740, @0,@0,"st東江_通常_normal");
	FadeSt("C",200,true);}
//【東江】
<voice name="東江" class="東江" src="voice/dm35/0000270b02">
"In the end&, you've become the only survivor left of your
 family&. Shouldn't you know the method to create that
 medicine?"

{	Fw("fwミンク_通常_angry2");}
//【ミンク】
<voice name="ミンク" class="ミンク" src="voice/dm35/0000280a05">
"And if I do? Do you think I'd fucking tell you?"

{	St("C",740, @0,@0,"st東江_通常_think");
	FadeSt("C",200,true);}
//【東江】
<voice name="東江" class="東江" src="voice/dm35/0000290b02">
"Of course I don't think you would&. That's why I'd like to
 offer you a deal&."

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	St("C",740, @0,@0,"st東江_通常_normal");
	FadeSt("C",200,true);
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0090]
//【東江】
<voice name="東江" class="東江" src="voice/dm35/0000300b02">
"In exchange for the information of the method of its
 production&, I'll grant any wish you may have&. I have the
 power to do anything&. Will you accept these terms?"


</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0091]
Toue takes one step forward and looks at Mink with 
challenging eyes&. 

Mink says nothing and does nothing&.

He's clearly angry&, but he has more of a dark aura 
surrounding him than before&.

After the long silence&, Mink exhales softly and smiles&.


</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	Fw("fwミンク_通常_pride");
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0092]
//【ミンク】
<voice name="ミンク" class="ミンク" src="voice/dm35/0000310a05">
"&.&.&.It's something you'll never get your hands on&.
 Your stubbornness is impressive&."


</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	St("C",740, @0,@0,"st東江_通常_normal");
	FadeSt("C",200,true);
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0093]

//【東江】
<voice name="東江" class="東江" src="voice/dm35/0000320b02">
"I would like to honor your family and maintain a
 relationship of respect and affection&. Is this how much
 you ardently detest me?"

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	St("C",740, @0,@0,"st東江_通常_think");
	FadeSt("C",200,true);
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0100]
//【東江】
<voice name="東江" class="東江" src="voice/dm35/0000330b02">
"It's simple to create artificial beings to control human
 hearts&. However you were naturally blessed with that
 power&, a mighty and mysterious power of this world&."

{	Fw("fwミンク_通常_normal2");}
//【ミンク】
<voice name="ミンク" class="ミンク" src="voice/dm35/0000340a05">
"I see&. So what happens if I turn over everything to Toue
 Inc&.?"

{	St("C",740, @0,@0,"st東江_通常_normal");
	FadeSt("C",200,true);}
//【東江】
<voice name="東江" class="東江" src="voice/dm35/0000350b02">
"As one would expect&, the research and management would be
 on strict and difficult terms&, but we could both amass an
 equal amount of assets&."

{	Fw("fwミンク_通常_pride");}
//【ミンク】
<voice name="ミンク" class="ミンク" src="voice/dm35/0000360a05">
"Ha&. Of course you would&."

{	St("C",740, @0,@0,"st東江_通常_normal");
	FadeSt("C",0,true);}
//【東江】
<voice name="東江" class="東江" src="voice/dm35/0000370b02">
"&.&.&.If you'll accept those conditions&, I guess we would
 depend on our transactions&."

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0110]
While trying to grasp the rare sight of Mink letting out a small laugh&, Toue lightly jerks his chin&.

But Mink stops smiling right there&.


</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

{	Fw("fwミンク_通常正面_angry2");}
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0112]
//【ミンク】
<voice name="ミンク" class="ミンク" src="voice/dm35/0000380a05">
"What I want is your life&. I don't need anything else but
 that&."

{	St("C",740, @0,@0,"st東江_通常_normal");
	FadeSt("C",200,true);}
//【東江】
<voice name="東江" class="東江" src="voice/dm35/0000390b02">
"&.&.&.I see how it is&."


</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0114]
Toue's mouth pulls into a light smile as he walks out of 
Mink's way&, nodding his head&.


</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	St("C",740, @0,@0,"st東江_通常_think");
	FadeSt("C",200,true);
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0120]
//【東江】
<voice name="東江" class="東江" src="voice/dm35/0000400b02">
"Well&, I thought you would say that&."


</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	SetVolumeEX("@dm*", 1000, 0, null);

//※次ファイル["dm3510.nss"]

}
