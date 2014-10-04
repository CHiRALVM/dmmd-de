//<continuation number="530">
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


scene dm0350.nss_MAIN
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
	#ev035ノイズ登場=true;
	#ev035ノイズ登場a=true;
	#bg104031_5_蒼葉宅自室消灯荒らし=true;

	//▼ルートフラグ、選択肢、次のGameName
	$PreGameName = $GameName;
	$GameName = "dm0350sl.nss";

}


scene dm0350.nss
{

	//■シーンの頭に必ず記述
	$スクリプトバージョン = " $Revision:  $";
	$構成名 = ModuleFileName();
	$構文名 = $SYSTEM_present_process;
	SystemInit();


//―――――――――――――――――――――――――――――――――――――――

	PrintBG("上背景", 30000);

	CreateColorSP("絵色黒", 5000, "000000");

	OnBG(10,"bg104001_3_蒼葉宅前通り玄関消灯");
	FadeBG(0,true);

	Delete("上背景");

	FadeDelete("絵色黒", 1000, null, true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0010]
When I come back home after my part-time job&, I 
restlessly try to open the lock on the front door&.

I wonder if Granny behaved herself?

&.&.&.However&, I stop my hand halfway&.

Something's strange&.


</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	CreateSE("SE01","se物体_ドア_鍵回す01");//あきゅん「ＳＥ：se物体_ドア_鍵回す01」
	MusicStart("SE01",0,700,0,1000,null,false);

	Fw("fw蒼葉_通常_shock");
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0014]
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm03/5000010a01">
"Huh?"


</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	CreateSE("SE01","se物体_ドア_鍵回す02");//あきゅん「ＳＥ：se物体_ドア_鍵回す02」
	MusicStart("SE01",0,700,0,1000,null,false);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0015]
When I insert the key&, something feels different&. 
&.&.&.Don't tell me&.


</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	SoundPlay("@dm005",0,450,true);

	CreateSE("SE01","se物体_蒼葉宅玄関_扉開くゆっくり01");//あきゅん「ＳＥ：se物体_蒼葉宅玄関_扉開くゆっくり01」
	MusicStart("SE01",0,700,0,1000,null,false);

	Fw("fw蒼葉_通常_shock2");
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0016]
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm03/5000020a01">
"&.&.&.It's open&."

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0020]
The door isn't locked&.

Did I go out without locking it again&.&.&.?


</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	Fw("fw蒼葉_通常_worry4");
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0021]
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm03/5000030a01">
"This is bad&, Granny's inside&.&.&. What do I do if something
 happened?"


</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
	TextBoxDelete(0);


	OnBG(10,"bg104011_5_蒼葉宅玄関消灯");
	FadeBG(500,true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0022]
The bonds between the people in the community are strong&, 
but security isn't tight&, and it wasn't uncommon to hear 
of thieves&.

I feel sick of my own forgetfulness and I enter the house&, 
listening carefully&.

&.&.&.There doesn't seem to be any sign of people&.


</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
	TextBoxDelete(0);

	CreateColorEX("絵色黒", 100, "000000");
	Fade("絵色黒", 500, 1000, null, true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0024]
I take off my shoes and enter the corridor before heading 
straight to Granny's room&.

I open the door quietly and peep inside to find Granny 
sleeping buried in the futon&.

Looks like nothing happened&.&.&.


</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
	TextBoxDelete(0);

	FadeDelete("絵色黒", 500, null, true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0026]
I heave a sigh of relief and return to the corridor&.

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	SetVolumeEX("@dm*", 3000, 0, null);

	Fw("fw蒼葉_通常_worry3");
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0030]
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm03/5000040a01">
"&.&.&.Hm?"


</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0031]
I stop going up the stairs&.

Something&.&.&. felt strange&.

It's quiet in the house because Granny was sleeping&, and 
there's nothing particularly strange&.

Is it my imagination?


</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
	TextBoxDelete(0);

	CreateSE("SE01","se物体_蒼葉宅階段_登る通常01");//あきゅん「ＳＥ：se物体_蒼葉宅階段_登る通常01」
	MusicStart("SE01",0,700,0,1000,null,false);

	CreateColorEX("絵色黒", 1000, "000000");
	Fade("絵色黒", 500, 1000, null, true);

	SetVolumeEX("SE*", 3000, 0, null);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0035]
I twist my neck as I walk up the stairs and open the door 
to my room&.

&.&.&.Inside&, I realize that it wasn't just my imagination&.

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
	TextBoxDelete(0);

	CreateSE("SE01","se物体_蒼葉宅自室扉_扉開くゆっくり01");//あきゅん「ＳＥ：se物体_蒼葉宅自室扉_扉開くゆっくり01」
	MusicStart("SE01",0,700,0,1000,null,false);


	CreateTextureSP("絵背景100", 100, 0, -801, "cg/bg/l/bg104031_5_蒼葉宅自室消灯荒らし_l.jpg");

	DrawDelete("絵色黒", 1000, 100, null, "slide_01_00_1", true);

	Wait(1000);

	Move("絵背景100", 1000, -1022, -801, Dxl1, true);

	OnBG(10,"bg104031_5_蒼葉宅自室消灯荒らし");
	FadeBG(0,true);

	Fw("fw蒼葉_通常_worry4");
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0036]
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm03/5000050a01">
"Wha-what's all this&.&.&.?"
{
	SoundPlay("@dm006",0,450,true);
}

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	DeleteFw();
	Move("絵背景100", 500, -1022, -601, Dxl1, false);
	FadeDelete("絵背景100", 500, null, true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0040]
Not that it's anything to brag about&, but my room was 
never particularly clean&.

There were books and magazines piled up on the floor&, and 
there were also many things I just left there because 
cleaning them up would be a pain&.

But&.&.&. I don't remember it being this dirty&.

The room is a complete mess&, almost like a storm blew its 
way through it&.

There are no places left to stand&. Everything has been 
pulled out&, and even the table was turned over&.

And in the middle of it all sits something that I would've 
never wanted to see&.


</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	CreateSE("SE01","se物体_パソコン_キーボード操作01");//あきゅん「ＳＥ：se物体_パソコン_キーボード操作01」
	MusicStart("SE01",0,700,0,1000,null,false);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0048]
&.&.&.A person is sitting in front of the computer monitor&. 
Just boldly sitting there&.

I can only think of one thing this person might be&.

It's just like what I was thinking of earlier&.

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	Fw("fw蒼葉_通常_shout");
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0050]
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm03/5000060a01">
"Thief!"

//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm03/5000070a01">
"What are you doing in someone else's room!?"


</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
	TextBoxDelete(0);

	CreateTextureEX("絵ＥＶ111", 1110, Center, Middle, "cg/ev/ev035ノイズ登場a.jpg");
	CreateTextureEX("絵ＥＶ110", 1100, -573, -42, "cg/ev/l/ev035ノイズ登場a_l.jpg");
	Move("絵ＥＶ110", 1000, -573, -121, Dxl1, false);
	Fade("絵ＥＶ110", 1000, 1000, null, true);

	Wait(500);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0054]
The person in front of the computer looks up slowly as if 
he only just realizes my presence&.

He's a completely unfamiliar face and I've never seen him 
before in my life&. 
He seems to be about the same age as me&.


</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
	TextBoxDelete(0);

	Move("絵ＥＶ110", 1000, -573, -221, Dxl3, false);
	Fade("絵ＥＶ111", 1000, 1000, null, true);
	Delete("絵ＥＶ110");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0056]
//【ノイズ】
<voice name="ノイズ" class="ノイズ" src="voice/dm03/5000080a03">
"Welcome back&."

{
	Fw("fw蒼葉_通常_shout2");
}
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm03/5000090a01">
"Wha&.&.&.!? Who are you? Why are you in my room&.&.&.?"

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0057]
//【ノイズ】
<voice name="ノイズ" class="ノイズ" src="voice/dm03/5000100a03">
"By the way-"

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
	TextBoxDelete(0);

	CreateSE("SE01","se物体_パソコン_キーボード操作02");
	MusicStart("SE01",0,700,0,1000,null,false);

	CreateTextureSP("絵ＥＶ109", 1090, 0, -121, "cg/ev/l/ev035ノイズ登場_l.jpg");
	FadeDelete("絵ＥＶ111", 500, null, true);
	Move("絵ＥＶ109", 1000, -423, -121, Dxl1, true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0060]
He ignores me as I tremble with anger and taps on the 
keyboard with his middle finger&.

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	Fw("fw蒼葉_通常_shout2");
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0062]
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm03/5000110a01">
"Hey! I didn't say you could touch that!"

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0063]
//【ノイズ】
<voice name="ノイズ" class="ノイズ" src="voice/dm03/5000120a03">
"I don't understand the data inside of here at all&. What's
 this even supposed to be?"

{
	CreateTextureSP("絵ＥＶ108", 1080, -423, -121, "cg/ev/l/ev035ノイズ登場a_l.jpg");
	FadeDelete("絵ＥＶ109", 500, Dxl1, true);
}
//【ノイズ】
<voice name="ノイズ" class="ノイズ" src="voice/dm03/5000130a03">
"Even the Allmate remodeling program here is complicated&.
 Who the hell are you?"

{
	Fw("fw蒼葉_通常_rage");
}
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm03/5000140a01">
"Like hell I'd tell you! Just get out!"

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0064]
//【ノイズ】
<voice name="ノイズ" class="ノイズ" src="voice/dm03/5000150a03">
"&.&.&.&.&."

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	FadeDelete("絵ＥＶ108", 400, null, true);

	CreateSE("SE01","se人体_動作_衣擦れ01");
	MusicStart("SE01",0,600,0,800,null,false);

	St("C",740, @0,@0,"stノイズ_通常_normal");
	FadeSt("C",200,true);
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0070]
The man laughs through his nose as if he's looking down 
on me and stands up&.


</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	St("C",740, @0,@0,"stノイズ_通常_normal2");
	FadeSt("C",200,true);
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0071]
//【ノイズ】
<voice name="ノイズ" class="ノイズ" src="voice/dm03/5000160a03">
"Hey&, you&. Don't you know who I am?"

{
	Fw("fw蒼葉_通常_shout2");
}
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm03/5000170a01">
"Wha?"

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0072]
//【ノイズ】
<voice name="ノイズ" class="ノイズ" src="voice/dm03/5000180a03">
"I think you do know&, though&."

{
	Fw("fw蒼葉_通常_rage");
}
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm03/5000190a01">
"&.&.&.I don't know you at all&. You've got the wrong guy&."

{
	St("C",740, @0,@0,"stノイズ_通常_normal");
	FadeSt("C",200,true);
}
//【ノイズ】
<voice name="ノイズ" class="ノイズ" src="voice/dm03/5000200a03">
"&.&.&.&.&."

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0080]
The man looks into my eyes and opens his mouth slowly&.


</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	St("C",740, @0,@0,"stノイズ_通常_normal2");
	FadeSt("C",200,true);
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0081]
//【ノイズ】
<voice name="ノイズ" class="ノイズ" src="voice/dm03/5000210a03">
"This time&, it is such an honor&."

//【ノイズ】
<voice name="ノイズ" class="ノイズ" src="voice/dm03/5000220a03">
"So let's have a fun game&, shall we?"


</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
	TextBoxDelete(0);

	CreateSE("SE01","se擬音_回想_フラッシュバック02");//あきゅん「ＳＥ：se擬音_回想_フラッシュバック01」
	MusicStart("SE01",0,700,0,1000,null,false);

//あきゅん「演出：辻斬りをフラッシュバック、本当に一瞬」

	CreatePlainSP("絵板写１", 10000);

	CreateTextureSP("回想1000", 1000, Center, InBottom, "cg/bg/bg201021_0_ライムノイズ01.jpg");
	St("C",1200, @0,@0,"stウサギ頭_通常_normal");
	FadeSt("C",0,true);

	CreateColorSP("回想色", 5000, "624a2b");
	Request("回想色", OverlayRender);

	CreateTextureSPmul("回想枠", 1500, Center, Middle, "cg/ef/effi回想01.jpg");

	FadeDelete("絵板写１", 30, null, true);

	Wait(30);
//	WaitKey();

	CreatePlainSP("絵板写２", 10000);

	Delete("回想*");
	St("C",740, @0,@0,"stノイズ_通常_normal2");
	FadeSt("C",200,true);

	FadeDelete("絵板写２", 30, null, true);


	Fw("fw蒼葉_通常_shock2");
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0083]
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm03/5000230a01">
"&.&.&.!?"


</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0086]
&.&.&.I've heard that somewhere before&.

What? Where was it? 
I've got a very unpleasant feeling&.&.&.

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	St("C",740, @0,@0,"stノイズ_通常_normal");
	FadeSt("C",200,true);
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0090]
//【ノイズ】
<voice name="ノイズ" class="ノイズ" src="voice/dm03/5000240a03">
"Still don't know?"


</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	CreateSE("SE01","se物体_キーホルダー_鳴る01");//あきゅん「ＳＥ：se物体_キーホルダー_鳴る01」
	MusicStart("SE01",0,700,0,1000,null,false);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0091]
The man takes something out of his pants pocket&.

It's something full of rabbit heads&.&.&. a key chain&.


</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	Fw("fw蒼葉_通常_angry");
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0092]
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm03/5000250a01">
"&.&.&.!"


</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
	TextBoxDelete(0);

	CreateSE("SE01","se擬音_回想_フラッシュバック01");//あきゅん「ＳＥ：se擬音_回想_フラッシュバック01」
	MusicStart("SE01",0,700,0,1000,null,false);

//あきゅん「演出：辻斬り戦闘構図あたりを長めに表示」

	CreatePlainSP("絵板写１", 10000);

	CreateTextureSP("回想1000", 1000, 200, 90, "cg/ev/l/ev900ライム対戦蒼葉VSウサギ頭_l.jpg");
	Zoom("回想1000", 0, 1200, 1200, null, true);
	Request("回想1000", Smoothing);

	CreateColorSP("回想色", 5000, "624a2b");
	Request("回想色", OverlayRender);

	CreateTextureSPmul("回想枠", 1500, Center, Middle, "cg/ef/effi回想01.jpg");

	FadeDelete("絵板写１", 200, null, true);

	Wait(500);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0093]
This guy&.&.&.

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	SetVolumeEX("SE*", 1000, 0, null);

	CreatePlainSP("絵板写２", 10000);

	Delete("回想*");
	OnBG(10,"bg104031_5_蒼葉宅自室消灯荒らし");
	FadeBG(0,true);

	FadeDelete("絵板写２", 250, null, true);
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0094]
Satisfied with my reaction&, the man drops the key chain 
and looks at me&.

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	St("C",740, @0,@0,"stノイズ_通常_normal2");
	FadeSt("C",200,true);
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0095]
//【ノイズ】
<voice name="ノイズ" class="ノイズ" src="voice/dm03/5000260a03">
"It was a pretty entertaining setup&, wasn't it? Misdirected home delivery and all&."

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	Fw("fw蒼葉_通常_shock2");
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0100]
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm03/5000270a01">
"! Were you the Drive-Byer back then? And the home
 delivery&.&.&."


{
	Fw("fw蒼葉_通常_rage");
}
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm03/5000280a01">
"Were you the one that ordered from us?"

{
	St("C",740, @0,@0,"stノイズ_通常_normal");
	FadeSt("C",200,true);
}
//【ノイズ】
<voice name="ノイズ" class="ノイズ" src="voice/dm03/5000290a03">
"Yeah&. When I investigated various things I found out you
 worked there&, so I thought I'd have you come to me&."

{
	St("C",740, @0,@0,"stノイズ_通常_cool2");
	FadeSt("C",200,true);
}
//【ノイズ】
<voice name="ノイズ" class="ノイズ" src="voice/dm03/5000300a03">
"I paid in advance&, so there's no problems for the shop&,
 right?"

{
	Fw("fw蒼葉_通常_rage");
}
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm03/5000310a01">
"&.&.&.That's not the issue&."


</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0101]
I recall how completely at a loss Haga-san was&, and the 
anger wells up&.

{
	St("C",740, @0,@0,"stノイズ_通常_normal");
	FadeSt("C",200,true);
}
//【ノイズ】
<voice name="ノイズ" class="ノイズ" src="voice/dm03/5000320a03">
"By the way&. It was like that before too&, but&.&.&. When we
 did Rhyme&, what did you do?"

{
	Fw("fw蒼葉_通常_angry");
}
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm03/5000330a01">
"What are you talking about?"

{
	St("C",740, @0,@0,"stノイズ_通常_normal2");
	FadeSt("C",200,true);
}
//【ノイズ】
<voice name="ノイズ" class="ノイズ" src="voice/dm03/5000340a03">
"Don't play dumb&. I'm asking how you beat me&."

{
	Fw("fw蒼葉_通常_worry4");
}
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm03/5000350a01">
"&.&.&.Beat you?"

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0110]
During that Drive-By thing&, did I beat this guy? 
I can't remember&.&.&.

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	St("C",740, @0,@0,"stノイズ_通常_serious");
	FadeSt("C",200,true);
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0111]
//【ノイズ】
<voice name="ノイズ" class="ノイズ" src="voice/dm03/5000360a03">
"Are you deaf? Say something&."

{
	Fw("fw蒼葉_通常_sad");
}
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm03/5000370a01">
"No&. &.&.&.I don't remember&."

{
	St("C",740, @0,@0,"stノイズ_通常_angry");
	FadeSt("C",200,true);
}
//【ノイズ】
<voice name="ノイズ" class="ノイズ" src="voice/dm03/5000380a03">
"What?"

{
	Fw("fw蒼葉_通常_worry4");
}
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm03/5000390a01">
"I can't remember a thing about what happened during
 Rhyme&.&.&."

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0120]
//【ノイズ】
<voice name="ノイズ" class="ノイズ" src="voice/dm03/5000400a03">
"&.&.&.&.&."

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	St("C",740, @0,@0,"stノイズ_通常_serious");
	FadeSt("C",200,true);
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0121]
The man frowns a little&, but immediately forms a straight 
face again&.

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0122]
//【ノイズ】
<voice name="ノイズ" class="ノイズ" src="voice/dm03/5000410a03">
"So that's how you try to get out of it&."

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	CreateSE("SE03","se人体_動作_掴む01");
	MusicStart("SE03",0,700,0,1000,null,false);

	DeleteAllSt(200,true);

	CreatePlainSP("絵板写", 990);

	CreateSE("SE01","se人体_衝撃_叩く01");//あきゅん「ＳＥ：se人体_衝撃_叩く01」
	MusicStart("SE01",0,700,0,800,null,false);

	CreateSE("SE02","se人体_衝撃_転倒02");
	MusicStart("SE02",0,700,0,800,null,false);

	Shake("絵板写", 200, 0, 20, 0, 0, 500, null, true);
	Delete("絵板写");

	Fw("fw蒼葉_通常_pinch");
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0123a]
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm03/5000420a01">
"&.&.&.Guh!"

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0123b]
Suddenly&, he grabs me by my coat collar and presses me 
against the wall&.

This guy's stronger than he looks&.&.&.!

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	St("C",740, @0,@0,"fuノイズ_通常_serious");
	FadeSt("C",200,true);
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0130]
//【ノイズ】
<voice name="ノイズ" class="ノイズ" src="voice/dm03/5000430a03">
"Then I'll have to use force&. It seems to be the most
 effective way for you&."

{
	Fw("fw蒼葉_通常_pinch");
}
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm03/5000440a01">
"&.&.&.Gh&, let me go!"

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	St("C",740, @0,@0,"fuノイズ_通常_angry");
	FadeSt("C",200,true);
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0131]
//【ノイズ】
<voice name="ノイズ" class="ノイズ" src="voice/dm03/5000450a03">
"You really don't remember?"

{
	Fw("fw蒼葉_通常_shout");
}
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm03/5000460a01">
"I don't remember!"

{
	St("C",740, @0,@0,"fuノイズ_通常_serious");
	FadeSt("C",200,true);
}
//【ノイズ】
<voice name="ノイズ" class="ノイズ" src="voice/dm03/5000470a03">
"&.&.&.&.&."

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0140]
The man stares into my eyes intently as if he's trying to 
find something&.


</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	St("C",740, @0,@0,"fuノイズ_通常_normal");
	FadeSt("C",200,true);
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0141]
//【ノイズ】
<voice name="ノイズ" class="ノイズ" src="voice/dm03/5000480a03">
"Fight me in Rhyme one more time&."

{
	Fw("fw蒼葉_通常_pinch");
}
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm03/5000490a01">
"Wha? I don't know how to do Rhyme&, &.&.&.ugh&."


</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	DeleteFw();
	DeleteAllSt(200,true);

	CreateSE("SE01","se人体_動作_衣擦れ02");//あきゅん「ＳＥ：se人体_動作_衣擦れ01」
	MusicStart("SE01",0,700,0,1000,null,false);

	CreatePlainSP("絵板写", 990);
	Shake("絵板写", 200, , 10, 0, 0, 1000, null, true);
	Delete("絵板写");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0146]
I'm pressed against the wall with even more force&.

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	St("C",740, @0,@0,"fuノイズ_通常_angry");
	FadeSt("C",200,true);
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0147]
//【ノイズ】
<voice name="ノイズ" class="ノイズ" src="voice/dm03/5000500a03">
"Still going to say that?"

//【ノイズ】
<voice name="ノイズ" class="ノイズ" src="voice/dm03/5000510a03">
"Then I'll destroy what's important to you&."

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	Fw("fw蒼葉_通常_angry");
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0150]
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm03/5000520a01">
"!"

{
	St("C",740, @0,@0,"fuノイズ_通常_normal3");
	FadeSt("C",200,true);
}
//【ノイズ】
<voice name="ノイズ" class="ノイズ" src="voice/dm03/5000530a03">
"I know what's important to you&. I know all about it&."


</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0154]
The man's eyes look at the computer&, suggesting something&.

What this guy's talking about is probably&.&.&. Ren&.

He's threatening me&. If I don't accept&, he's really gonna 
do it&.

A dangerous atmosphere fills the room&.

But even now I don't feel like fighting him in Rhyme&.

And I'm beginning to get angry at his ridiculous behavior&.

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

//※次ファイル["dm0350sl.nss"]

}
