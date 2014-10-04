//<continuation number="240">
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


scene dm3660.nss_MAIN
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
	$GameName = "dm3670.nss";

}


scene dm3660.nss
{

	//■シーンの頭に必ず記述
	$スクリプトバージョン = " $Revision:  $";
	$構成名 = ModuleFileName();
	$構文名 = $SYSTEM_present_process;
	SystemInit();


//―――――――――――――――――――――――――――――――――――――――

	PrintBG("上背景", 30000);

	CreateColorSP("絵色黒", 5000, "000000");
	OnBG(10,"bg304112_5_東江タワー中ホール扉前");
	FadeBG(0,true);

	Delete("上背景");
	DrawDelete("絵色黒", 1000, 100, null, "blind_01_00_1", true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0010]
When we left the hall&, the bike was left there&, toppled 
over&.

{
	CreateSE("SE01","se物体_ドア_鍵回す01");
	CreateSE("SE02","se物体_ドア_鍵回す01");

	MusicStart("SE01",0,700,0,1000,null,false);

	Wait(300);

	MusicStart("SE02",0,700,0,1000,null,false);
}
Mink props it back up&, puts the key in&, and turns it&.

But the engine isn't starting&. It's not doing a thing&.


</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	Fw("fwミンク_通常_angry");
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0012]
//【ミンク】
<voice name="ミンク" class="ミンク" src="voice/dm36/6000010a05">
"&.&.&.Well&, shit&."


</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

	TextBoxDelete(0);

	CreateSE("SE01","se人体_足音_走る04複数");
	MusicStart("SE01",0,100,0,1000,null,false);
	SetVolumeEX("SE01", 1500, 700, null);

	OnBG(10,"bg304031_5_東江タワー廊下01");
	FadeBG(500,true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0013]
&.&.&.I raise my head to the sound of footsteps&.

A group of security officers appear from inside the 
hallway&.


</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);


{	St("C",740, @0,@0,"st悪島_通常_normal");}
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0015]
And the face in the front is&.&.&.


</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

SoundPlay("@dm007a",0,450,true);

{	St("C",740, @0,@0,"st悪島_通常_pride");
	FadeSt("C",200,true);}
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0016]
//【悪島】
<voice name="悪島" class="悪島" src="voice/dm36/6000020b08">
"Oh&, nooooooo&, it's been a while&, you two!"

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	Fw("fwミンク_通常_angry2");
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0020]
//【ミンク】
<voice name="ミンク" class="ミンク" src="voice/dm36/6000030a05">
"&.&.&.Fuck&, you again?"


</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0021]
Mink clicks his tongue in annoyance&.
Soon enough his face turns a different color&.

Behind the officers are&.&.&.
Scratch members&.

They must have been roughed up hard&, because all of their 
faces are swelled up&.


</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

{	St("C",740, @0,@0,"st悪島_通常_laugh");
	FadeSt("C",200,true);}
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0024]
//【悪島】
<voice name="悪島" class="悪島" src="voice/dm36/6000040b08">
"I don't know how you guys got away&, but it ain't gonna
 work this time&. I've got some hostages on me&."

{	Fw("fwmミンクチームA_通常_normal");}
//【ミンクチームＡ】
<voice name="ミンクチームＡ" class="ミンクチームＡ" src="voice/dm36/6000050e45">
"Mink-san&.&.&. We're really&, really sorry&.&.&."

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	Fw("fwミンク_通常_angry");
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0030]
//【ミンク】
<voice name="ミンク" class="ミンク" src="voice/dm36/6000060a05">
"&.&.&.Looks like you brought all different subordinates
 this time&."

{	St("C",740, @0,@0,"st悪島_通常_pride");
	FadeSt("C",200,true);}
//【悪島】
<voice name="悪島" class="悪島" src="voice/dm36/6000070b08">
"It'd be an issue if you slipped your dogs in&. They're
 all completely new recruits&."

{	Fw("fwミンク_通常_pride");}
//【ミンク】
<voice name="ミンク" class="ミンク" src="voice/dm36/6000080a05">
"You're just a persistent little bitch&. Job well done&."

{	St("C",740, @0,@0,"st悪島_通常_laugh");
	FadeSt("C",200,true);
	St("C",740, @0,@0,"st悪島_通常_normal");
	FadeStPro("C", 7000, 180);
	}
//【悪島】
<voice name="悪島" class="悪島" src="voice/dm36/6000090b08">
"You flatter me too much&. I've never been able to stomach
 you&.&.&. Oi&."


</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	CreateSE("SE01","se戦闘_銃_構える01複数");
	MusicStart("SE01",0,700,0,1000,null,false);


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0034]
Akushima gives the signal&, and the officers turn their guns
onto the members&.


</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

{	St("C",740, @0,@0,"st悪島_通常_laugh");
	FadeSt("C",200,true);}
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0035]
//【悪島】
<voice name="悪島" class="悪島" src="voice/dm36/6000100b08">
"Stand and watch&. Don't you dare move a fingeeeeeer! It's
 over for these guys! On the spot&, BANG! BOOM! Like that&."

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	St("C",740, @0,@0,"st悪島_通常_pride");
	FadeSt("C",200,true);
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0040]
//【悪島】
<voice name="悪島" class="悪島" src="voice/dm36/6000110b08">
"Sooooooooo&, you wont move a single finger&, right?"


</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0041]
Akushima's chin rises and makes a prideful smile&, looking 
our way&.


</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

	TextBoxDelete(0);

	CreatePlainSP("絵板写", 5000);
	OnBG(10,"bg304112_5_東江タワー中ホール扉前");

	DeleteAllSt(0,true);

	FadeBG(0,true);
	FadeDelete("絵板写", 500, null, true);

	St("C",740, @0,@0,"buミンク_通常正面_normal");
	FadeSt("C",200,true);

	Wait(300);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0042]
I asked Mink questions with my eyes in the strained 
atmosphere&.

What now?

Mink glances at me and then looks back to Akushima&.


</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

{	St("C",740, @0,@0,"buミンク_通常正面_normal2");
	FadeSt("C",200,true);}
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0045]
//【ミンク】
<voice name="ミンク" class="ミンク" src="voice/dm36/6000120a05">
"If it's not even a finger&.&.&."


</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0046]
His eyes look at me&, a hidden meaning beneath them&.

His gaze press me on to say something&, and I understand 
what Mink is telling me&.

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0050]
Without being able to move an inch&, there's only one way 
to fix up this situation&.


</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

	TextBoxDelete(0);

	CreatePlainSP("絵板写", 5000);

	CreateTextureSP("絵背景", 100, Center, Middle, "cg/bg/bg304031_5_東江タワー廊下01.jpg");
	Request("絵背景", Smoothing);
	SetShade("絵背景", HEAVY);
	Zoom("絵背景", 0, 2000, 2000, null, true);

	St("C",740, @0,@0,"bu悪島_通常_pride");
	FadeSt("C",0,true);
	OnBG(10,"bg304031_5_東江タワー廊下01");

	FadeBG(0,true);
	FadeDelete("絵板写", 1000, null, true);

	Fw("fw蒼葉_通常_angry");
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0051]
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm36/6000130a01">
"&.&.&.&.&."


</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0052]
I focus and look into Akushima's eyes&.

Now is the time we need to get through more than ever&.
So&.&.&.

&.&.&.I'll use my power&.


</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

	TextBoxDelete(0);



	CreateSE("SE01","se擬音_効果_力蒼葉01");
	MusicStart("SE01",0,700,0,1000,null,false);

	Fw("fw蒼葉_通常力行使_serious");
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0055]
//※声発動
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm36/6000140a01">
"If you can move&, just try to&."

{	St("C",740, @0,@0,"bu悪島_通常_shock");
	FadeSt("C",200,true);}
//【悪島】
<voice name="悪島" class="悪島" src="voice/dm36/6000150b08">
"Hah!?"

{	Fw("fw蒼葉_通常力行使_serious");}
//※声発動
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm36/6000160a01">
"You can't move away from there&. You can't take a single
 step&.&.&. Or move a single finger&."

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	St("C",740, @0,@0,"bu悪島_通常_pride");
	FadeSt("C",200,true);
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0060]
//【悪島】
<voice name="悪島" class="悪島" src="voice/dm36/6000170b08">
"What're you going on about? Do you have any loose screws
 anywhere?"


</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0061]
Akushima makes an amused and condescending smile to the 
other officers; I ran up to him to make eye contact&.

Even if I can't get them all&, just some is enough&.


</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	Fw("fw蒼葉_通常力行使_serious");
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0063]
//※声発動
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm36/6000180a01">
"None of you can move&. Your feet are stuck to the floor&,
 and you can't take them off&."

{	St("C",740, @0,@0,"bu悪島_通常_shout");
	FadeSt("C",200,true);}
//【悪島】
<voice name="悪島" class="悪島" src="voice/dm36/6000190b08">
"Shaddap! I have a short temper&, so your useless&, shabby
 resistance is pissing me off&.&.&. Arrest him right now!"


</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0065]
Akushima stands and shouts&, saliva flying across the room&,
and then started to enter a sprint&.

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);


	St("C",740, @0,@0,"bu悪島_通常_shock");
	Shake("@StNameC/C*", 500, 5, 0, 0, 0, 1000, null, false);
	FadeSt("C",200,true);
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0070]
//【悪島】
<voice name="悪島" class="悪島" src="voice/dm36/6000200b08">
"&.&.&.&.&.Huh??"


</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0071]
&.&.&.But he had realized something very unusual&.

He looked down his body in confusion&, and his face changed like it was in slow motion&.


</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	CreatePlainSP("上絵板写", 5000);

{	St("C",740, @0,@0,"st悪島_通常_shout");
	FadeSt("C",0,true);}

	Delete("絵背景");


	CreatePlainSP("絵板写", 2000);
	Request("絵板写", Smoothing);

	Zoom("絵板写", 0, 1500, 1500, null, true);
	Delete("上絵板写");
	FadeFFR2("絵板写", 0,1000, 300, 0, 0, 50,null, false);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0072]
//【悪島】
<voice name="悪島" class="悪島" src="voice/dm36/6000210b08">
"WHAT THE FUUUUUUUUUUUUUUCK!?"


</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	FadeDelete("絵板写", 1000, null, true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0073]
His feet are at a stand still&, unable to even twitch&.

He tries to struggle with his upper body&, but he can't get the soles of his shoes off the floor&.

And some of the officers&.&.&. especially the ones on 
the side of Akushima&, were the same way&.


</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

{	St("C",740, @0,@0,"st悪島_通常_pain");
	FadeSt("C",200,true);}
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0077]
//【悪島】
<voice name="悪島" class="悪島" src="voice/dm36/6000220b08">
"HEY&, HEY&, HEY&, OHEY!!! What the hell is&.&.&. Ugh!"

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	CreateSE("SE01","se戦闘_打撃_ヒット低01");
	MusicStart("SE01",0,700,0,1000,null,false);

	CreatePlainSP("絵板写", 2000);
	CreateColorSP("絵色白", 4000, "FFFFFF");

	Shake("絵板写", 500, 0, 20, 0, 0, 1000, null, false);
	FadeDelete("絵板写", 500, null, false);

	Wait(30);
	DeleteAllSt(0,true);
	FadeDelete("絵色白", 70, null, true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0080]
In the chaos&, a Scratch member went through the gap 
between the officers and slammed his head into the back 
of Akushima's&.

{
	CreateSE("SE01","se人体_衝撃_転倒02");
	MusicStart("SE01",0,700,0,1000,null,false);
}
Akushima's eyes went wide as he fell to the ground&.


</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	CreateSE("SE01","se戦闘_打撃_ヒット複数01");
	MusicStart("SE01",0,700,0,1000,null,false);

{	Fw("fwmミンクチームA_通常_normal");}
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0082]
//【ミンクチームＡ】
<voice name="ミンクチームＡ" class="ミンクチームＡ" src="voice/dm36/6000230e45">
"Mink-san! We'll do something about this here!"

{	Fw("fwmミンクチームB_通常_normal");}
//【ミンクチームＢ】
<voice name="ミンクチームＢ" class="ミンクチームＢ" src="voice/dm36/6000240e46">
"Toue is above! Please go ahead! After this&, we will
 definitely go downstairs and continue on with the plan!"


</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);



//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0084]
The members scream aloud as they brawl with the officers&.

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0090]
Mink quickly looks to them&, exchanges looks&, and then 
looks to me&.

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

//※次ファイル["dm3670.nss"]

}
