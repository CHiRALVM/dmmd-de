//<continuation number="390">
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


scene dm0690_vs.nss_MAIN
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
	#ev069ミズキ人質を取る=true;
	#bg402051_1_立ち入り禁止区域裏通り=true;

	//▼演出処理を初期化
	TiesMovieDelete();

	//▼ルートフラグ、選択肢、次のGameName
	$PreGameName = $GameName;
	$GameName = "dm0700_scr.nss";

}


scene dm0690_vs.nss
{

	//■シーンの頭に必ず記述
	$スクリプトバージョン = " $Revision:  $";
	$構成名 = ModuleFileName();
	$構文名 = $SYSTEM_present_process;
	SystemInit();


//―――――――――――――――――――――――――――――――――――――――

	SoundPlay("@dm009",0,450,true);

	$NoTextBoxDelete=true;
	PrintBG("上背景", 30000);

	OnBG(10,"bg402041_1_立ち入り禁止区域工場通路");
	FadeBG(0,true);


	CreateSE("SE01","se人体_足音_走る03");
	MusicStart("SE01",0,700,0,900,null,false);
	FadeDelete("上背景", 200, null, true);

//==============================================
//※以降、合流
//==============================================


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0010]
I passed through a line between the black-clothed guys and Mink's men and ran full speed to the door farther inside&.

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
	TextBoxDelete(0);

	SetVolumeEX("SE*", 2000, 0, null);

//※どかっ、ばきっと戦ってる音が後ろで聞こえる
	CreateSE("SE11","se環境_戦闘_戦闘01L");
	MusicStart("SE11",0,700,0,1000,null,true);

//※ドアを開閉する音
	CreateSE("SE01","se物体_ドア鉄_扉開く01a");
	MusicStart("SE01",0,700,0,1000,null,false);
	CreateColorEX("絵色黒", 5000, "000000");
	Fade("絵色黒", 1000, 1000, null, true);
	SetVolumeEX("SE*", 3000, 0, null);
	SetVolumeEX("@dm*", 1000, 0, null);
	CreateSE("SE02","se物体_ドア鉄_扉開く01b");
	MusicStart("SE02",0,1000,0,1000,null,false);

	WaitPlay("SE02", null);
	Wait(2000);

//あきゅん「演出：ここで一度空気を切り替えてスローテンポで回していく」

	OnBG(10,"bg402051_1_立ち入り禁止区域裏通り");
	FadeBG(0,true);

	CreateSE("SEL01","se環境_自然_風と木々01L");
	MusicStart("SEL01",3000,250,0,400,null,true);

	FadeDelete("絵色黒", 2000, null, true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0011]
I open the door and go outside&.

In front of me is a parking lot space&, a car&, and black 
colored van that had been parked&.

Around it stands a crowd of people in black clothing&.

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

	CreateTextureEX("絵背景", 100, -690, -400, "cg/bg/l/bg402051_1_立ち入り禁止区域裏通り_l.jpg");
	Fade("絵背景", 500, 1000, null, true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0014]
Three people come out of the back seat and move towards 
the open van&.

I see the person in the middle&.&.&. and yell out without 
thinking&.

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	SetVolumeEX("SE*", 1000, 0, null);

{	Fw("fw蒼葉_通常_rage");}
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0015]
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm06/9000010a01">
"Granny!"

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0016]
That small silhouette&, being restrained on both sides and  forced to walk is undoubtedly Granny!

The black-clothed men notice me and begin to run towards 
me&.

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	SetVolumeEX("@dm*", 5000, 0, null);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0020]
//【ミズキ】
<voice name="ミズキ" class="ミズキ" src="voice/dm06/9000020b06">
"&.&.&.Wait&."

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0021]
A single person calls for them to stop&.<k>
I can't see his face because of his hood&.

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
	TextBoxDelete(0);

	CreatePlainSP("絵板写", 5000);
	Delete("絵背景");

	CreateCamera("Ｃ", 0, 200, 1000);
	SetAlias("Ｃ","Ｃ");

	CreateTextureSP("Ｃ/絵背景", 10, Center, Middle, "cg/bg/l/bg402051_1_立ち入り禁止区域裏通り_l.jpg");

	CreateTextureSP("Ｃ/絵立ち絵", 510, Center, -180, "cg/st/l/stミズキ_洗脳_normal_l.png");
	Request("Ｃ/絵立ち絵", Smoothing);
	Zoom("Ｃ/絵立ち絵", 0, 500, 500, null, true);

	FadeDelete("絵板写", 500, null, true);

	CreateSE("SE02","se戦闘_動作_走る01a");
	MusicStart("SE02",0,700,0,1000,null,false);

	Wait(200);

	CreateSE("SE01","se人体_動作_衣擦れ15");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0023]
The hooded person comes closer to me&, but keeps a small 
distance and stops&.<k><?>


{	MusicStart("SE01",0,500,0,1200,null,false);}
 He pulls down his hood slowly with 
both hands&.

I look at the face under the hood&, and&.&.&.

{	Wait(300);}
My heart stops&.

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

{	Fw("fw蒼葉_通常_shock2");}
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0029]
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm06/9000030a01">
"&.&.&.&.&.&."

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
	TextBoxDelete(0);

	MoveCamera("Ｃ", 5000, @0, 0, @0, DxlAuto, true);
	Wait(500);

	SoundPlay("@dm007a",0,450,true);//緊迫

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0030]
//【ミズキ】
<voice name="ミズキ" class="ミズキ" src="voice/dm06/9000040b06">
"I almost didn't think you'd come all the way out here&.
 That's just like you&, Aoba&."

{	Fw("fw蒼葉_通常_worry4");}
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm06/9000050a01">
"Mizuki&.&.&. You&, why&.&.&. To Granny&.&.&."

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	CreatePlainSP("絵板写", 5000);
	Delete("Ｃ");
	Zoom("@OnBG*", 0, 1500, 1500, null, true);
	Move("@OnBG*", 0, -120, -90, null, true);
	St("C",740, @0,@0,"stミズキ_洗脳_normal");
	FadeSt("C",0,true);
	FadeDelete("絵板写", 300, null, true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0032]
I'm too shocked to speak as Mizuki stares at me&. He shows 
off an almost superficial smile&.

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	St("C",740, @0,@0,"stミズキ_洗脳_normal");
	FadeSt("C",0,true);
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0033]
//【ミズキ】
<voice name="ミズキ" class="ミズキ" src="voice/dm06/9000060b06">
"I waited for the guys I sent to find you&, but for you to
 come all the way here&.&.&. I wonder if they were caught?"

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0035]
&.&.&.No way&.

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
	TextBoxDelete(0);

/*
	CreateSE("SE01","se擬音_回想_フラッシュバック01");

	CreatePlainSP("絵板写上蓋", 5000);

	CreateColorSP("絵回想背景", 1100, "000000");
//	CreateTextureSP("絵回想立絵", 1110, Center, 230, "cg/bu/buミズキ_通常_laugh.png");

	CreateTextureSP("絵回想立絵", 1110, Center, 230, "cg/st/stミズキ_通常_laugh.png");

	Request("絵回想立絵", Smoothing);
	Zoom("絵回想立絵", 0, 2000, 2000, null, true);

	MusicStart("SE01",0,700,0,1000,null,false);
	Fade("絵板写上蓋", 0, 0, null, true);
	Wait(70);
	Fade("絵板写上蓋", 200, 1000, null, true);

	Delete("絵回想*");
	Delete("絵板写上蓋");
*/

	CreateSE("SE01","se擬音_回想_フラッシュバック02");//あきゅん「ＳＥ：se擬音_回想_フラッシュバック01」
	MusicStart("SE01",0,700,0,1000,null,false);

	CreatePlainSP("絵板写１", 10000);

	CreateTextureSP("回想1000", 1000, 0, Middle, "cg/bg/bg101021_5_旧住民区通り裏路地01ドライジュース.jpg");
	St("C",1500, @0,@0,"stミズキ_通常_smile");
	FadeSt("C",0,true);

	CreateColorSP("回想色", 5000, "#624a2b");
	Request("回想色", OverlayRender);

	CreateTextureSPmul("回想枠", 1500, Center, Middle, "cg/ef/effi回想01.jpg");

	FadeDelete("絵板写１", 500, null, true);

	Wait(200);

	CreatePlainSP("絵板写２", 10000);

	Delete("回想*");
	St("C",740, @0,@0,"stミズキ_洗脳_normal");
	FadeSt("C",0,true);

	FadeDelete("絵板写２", 300, null, true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0036]
This isn't the face of the Mizuki I know&.

And he's saying all of these things with that horrible 
smile&.

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	Fw("fw蒼葉_通常_worry4");
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0040]
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm06/9000070a01">
"What&.&.&. happened to you? Both Koujaku and I were so
 worried when Dry Juice just disappeared&.&.&."

{	St("C",740, @0,@0,"stミズキ_洗脳_normal");
	FadeSt("C",0,true);}
//【ミズキ】
<voice name="ミズキ" class="ミズキ" src="voice/dm06/9000080b06">
"Ah&, that&, huh? Listen&, Aoba&. It's amazing&. We were reborn
 as members of Morphine&."

{	Fw("fw蒼葉_通常_worry3");}
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm06/9000090a01">
"Morphine&.&.&.?"

{	St("C",740, @0,@0,"stミズキ_洗脳_normal");
	FadeSt("C",0,true);}
//【ミズキ】
<voice name="ミズキ" class="ミズキ" src="voice/dm06/9000100b06">
"Yeah&. That legendary team&, you know&, that one? They're not just some group in Rib&. Being in Morphine is like being
 Gods&."

{	Fw("fw蒼葉_通常_worry4");}
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm06/9000110a01">
"&.&.&.Are you serious?"

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	St("C",740, @0,@0,"stミズキ_洗脳_normal");
	FadeSt("C",0,true);
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0050]
//【ミズキ】
<voice name="ミズキ" class="ミズキ" src="voice/dm06/9000120b06">
"Of course I am&. Did you think I was joking? Dry Juice is
 now an absolute being&."

{	St("C",740, @0,@0,"stミズキ_洗脳_mad");
	FadeSt("C",200,true);}
//【ミズキ】
<voice name="ミズキ" class="ミズキ" src="voice/dm06/9000130b06">
"I'm saying that now&, no other team could possibly pass
 Morphine&. Haha&, hahahahaha!"

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0053]
Mizuki starts to laugh with a huge smile on his face&.

I can't believe he's wearing such a disturbing expression&.

The surrounding members don't move a muscle&.

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

	CreateTextureEX("絵演背景", 1100, -780, -180, "cg/ev/l/evf02モルヒネ暗闇に佇む_l.jpg");
	Move("絵演背景", 10000, -620, @0, null, false);
	Fade("絵演背景", 500, 750, null, true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0055]
Does everyone here have those doll-like eyes?<k>
Is someone controlling them&.&.&.?

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	FadeDelete("絵演背景", 500, null, true);

{	Fw("fw蒼葉_通常_shout2");}
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0060]
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm06/9000140a01">
"Mizuki&, open up your eyes already&. This is nuts!"

{
	DeleteFw();
	St("C",740, @0,@0,"stミズキ_洗脳_normal");
	FadeSt("C",200,true);
}
//【ミズキ】
<voice name="ミズキ" class="ミズキ" src="voice/dm06/9000150b06">
"Huh? What're you saying? You're the weird one&, Aoba&."

{	St("C",740, @0,@0,"stミズキ_洗脳_cool");
	FadeSt("C",200,true);}
//【ミズキ】
<voice name="ミズキ" class="ミズキ" src="voice/dm06/9000160b06">
"You never once accepted an invitation to any team&. I was
 calling out to you with all seriousness&, you know?"

//【ミズキ】
<voice name="ミズキ" class="ミズキ" src="voice/dm06/9000170b06">
"Did you think that Rib was just something stupid to play?"

{	Fw("fw蒼葉_通常_shout2");}
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm06/9000180a01">
"Of course not!"

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

{	St("C",740, @0,@0,"stミズキ_洗脳_cool");
	FadeSt("C",200,true);}
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0070]
//【ミズキ】
<voice name="ミズキ" class="ミズキ" src="voice/dm06/9000190b06">
"Then why didn't you join a team? You knew that I was
 always serious about it&."

{	Fw("fw蒼葉_通常_worry3");}
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm06/9000200a01">
"&.&.&.&.&."

{	DeleteFw();}
//【ミズキ】
<voice name="ミズキ" class="ミズキ" src="voice/dm06/9000210b06">
"Aoba&, it's not too late&. And I'll even offer you a high
 ranked position&. Become a comrade of the reborn Dry
 Juice&."

{	Fw("fw蒼葉_通常_worry3");}
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm06/9000220a01">
"&.&.&.&.&."

{	Fw("fw蒼葉_通常_angry");}
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm06/9000230a01">
"&.&.&.Never&."

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0080]
I know Mizuki is completely serious when it comes to Rib&.

And that's why I always was as stern as possible when 
answering him&.

He's being strange right now&. 
He's not someone who would say these things&.


{
	St("C",740, @0,@0,"stミズキ_洗脳_angry");
	St("C",740, @0,@0,"stミズキ_洗脳_normal");
	FadeSt("C",200,true);
	FadeStPro("C", 1500, 200);
//	St("C",740, @0,@0,"stミズキ_洗脳_mad");
//	FadeSt("C",200,true);
}

Mizuki listens to me with that distorted smile on his face&,and soon he lets out another eerie smile&.

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0083]
//【ミズキ】
<voice name="ミズキ" class="ミズキ" src="voice/dm06/9000240b06">
"&.&.&.Oh&, really&. I see&. Whatever&. I have a good idea&,
 anyway&."

{	St("C",740, @0,@0,"stミズキ_洗脳_normal");
	FadeSt("C",200,true);}
//【ミズキ】
<voice name="ミズキ" class="ミズキ" src="voice/dm06/9000250b06">
"Aoba&, you really love your grandma&, don't you?"

{	Fw("fw蒼葉_通常_shock2");}
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm06/9000260a01">
"!"


</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
	TextBoxDelete(0);

	CreateSE("SE01","se戦闘_剣撃_風切り高01");
	MusicStart("SE01",0,700,0,1000,null,false);
	CreateColorSP("絵色白", 4000, "FFFFFF");
	Wait(30);
	CreateTextureSP("絵ＥＶ", 1100, -200, -350, "cg/ev/l/ev069ミズキ人質を取る_l.jpg");
	DeleteAllSt(0,true);
	FadeDelete("絵色白", 70, null, true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0086]
Mizuki grabs Granny&, puts her in a hold&, and then puts 
something to her neck&. <k>&.&.&.It's a knife&.

I can feel the sweat drip down my back&.

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0090]
//【タエ】
<voice name="タエ" class="タエ" src="voice/dm06/9000270b03">
"&.&.&.&.&."

{	Fw("fw蒼葉_通常_rage");}
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm06/9000280a01">
"&.&.&.Mizuki&, stop this&."

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	DeleteFw();
	Move("絵ＥＶ", 800, -430, -100, DxlAuto, true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0092]
//【ミズキ】
<voice name="ミズキ" class="ミズキ" src="voice/dm06/9000290b06">
"I will if you join my team&."

{	Fw("fw蒼葉_通常_hard");}
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm06/9000300a01">
"&.&.&.&.&."


</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	DeleteFw();
	CreateTextureEX("絵ＥＶ２", 1120, -230, -290, "cg/ev/l/ev069ミズキ人質を取る_l.jpg");
	Zoom("絵ＥＶ２", 0, 1200, 1200, null, true);
	Request("絵ＥＶ２", Smoothing);
	Move("絵ＥＶ２", 20000, 130, @0, null, false);
	Fade("絵ＥＶ２", 500, 1000, null, false);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0096]
Granny's face becomes stiff and she closes her eyes&.

Seeing her put on an expression of acceptance&, I quickly 
become even more impatient&.

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	CreateTextureSP("絵ＥＶ", 1100, Center, Middle, "cg/ev/ev069ミズキ人質を取る.jpg");
	FadeDelete("絵ＥＶ２", 300, null, true);

	Fw("fw蒼葉_通常_hard2");
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0100]
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm06/9000310a01">
"Let go of her&."

{	DeleteFw();}
//【ミズキ】
<voice name="ミズキ" class="ミズキ" src="voice/dm06/9000320b06">
"You really don't get it&, do you? I already told you&.
 Become part of our team&."

{	Fw("fw蒼葉_通常_hard2");}
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm06/9000330a01">
"I said I won't&."

{	DeleteFw();}
//【ミズキ】
<voice name="ミズキ" class="ミズキ" src="voice/dm06/9000340b06">
"Huh?"


</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	SetVolumeEX("@dm*", 2000, 0, null);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0104]
The irritation starts to show on Mizuki's face&.

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0105]
//【ミズキ】
<voice name="ミズキ" class="ミズキ" src="voice/dm06/9000350b06">
"You think I'm just bluffing? That I'm all talk? &.&.&.Fine
 then&, I'll start&."

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	Fw("fw蒼葉_通常_shock2");
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0110]
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm06/9000360a01">
"Hey&.&.&."

{	DeleteFw();}
//【ミズキ】
<voice name="ミズキ" class="ミズキ" src="voice/dm06/9000370b06">
"Don't regret it afterwards&, after all&, you're the one who
 didn't choose to join me&."

{	Fw("fw蒼葉_通常_shout");}
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm06/9000380a01">
"Hey&, Mizuki! Stop!"


</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	DeleteFw();
	CreateSE("SE01","se人体_動作_絞める01");
	MusicStart("SE01",0,700,0,1000,null,false);

	CreateTextureEX("絵ＥＶ２", 1120, -230, -360, "cg/ev/l/ev069ミズキ人質を取る_l.jpg");
	SetVertex("絵ＥＶ２", 820, 640);
	Zoom("絵ＥＶ２", 0, 1500, 1500, null, true);
	Request("絵ＥＶ２", Smoothing);
	Fade("絵ＥＶ２", 300, 1000, null, true);

	Zoom("絵ＥＶ２", 90000, 3000, 3000, null, false);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0113]
Mizuki pushes the tip of the knife to Granny's throat&.

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	CreateSE("SE01","se人体_心臓_鼓動02");
	MusicStart("SE01",0,700,0,1000,null,false);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0114]
No&.&.&.

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	CreateSE("SE01","se人体_心臓_鼓動02");
	MusicStart("SE01",0,700,0,1000,null,false);

	CreatePlainSP("絵板写", 5000);
	CreateTextureSP("絵演婆ＥＶ", 2010, -520, -70, "cg/ev/l/ev038婆ちゃんとみんなでご飯a_l.jpg");
	Request("絵演婆ＥＶ", Smoothing);
	Zoom("絵演婆ＥＶ", 0, 1250, 1250, null, true);
	Wait(16);
	Delete("絵板写");

	Wait(20);

	CreatePlainSP("絵板写", 5000);

	Delete("絵演婆*");
	Wait(16);
	Delete("絵板写");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0115]
Stop&.&.&.


</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	CreateSE("SE01","se人体_心臓_鼓動02");
	MusicStart("SE01",0,700,0,1000,null,false);

	CreatePlainSP("絵板写", 5000);
	CreateTextureSP("絵演婆ＥＶ", 2010, -500, -50, "cg/ev/l/ev033婆ちゃんをおんぶ_l.jpg");
	Wait(16);
	Delete("絵板写");

	Wait(30);

	CreatePlainSP("絵板写", 5000);

	Delete("絵演婆*");
	Wait(16);
	Delete("絵板写");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0116]
Granny&.&.&.


</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	CreateSE("SE01","se人体_心臓_鼓動02");
	MusicStart("SE01",0,700,0,1000,null,false);

	CreatePlainSP("絵板写", 5000);
	CreateTextureSP("絵演婆背景", 2010, Center, Middle, "cg/bg/bg104021_5_蒼葉宅台所.jpg");
	CreateTextureSP("絵演婆立ち絵", 2100, 160, -80, "cg/fu/x/fwタエ_通常_smile_x00.png");
	Wait(16);
	Delete("絵板写");

	Wait(40);

	CreatePlainSP("絵板写", 5000);

	Delete("絵演婆*");
	Wait(16);
	Delete("絵板写");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0117]
Granny!!!

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	CreateSE("SE01","se戦闘_動作_走る01");
	MusicStart("SE01",0,700,0,1000,null,false);

	CreateColorSP("絵色黒", 4000, "000000");
	DrawTransition("絵色黒", 150, 0, 1000, 100, null, "cg/data/zoom_01_00_0.png", true);

	PrintGO("上背景", 5000);

	CreateTextureSP("絵演立絵", 110, 312, 140, "cg/bu/buミズキ_洗脳_cool.png");
	Request("絵演立絵", Smoothing);

	CreateTextureSP("絵背景", 100, Center, Middle, "cg/bg/l/bg402051_1_立ち入り禁止区域裏通り_l.jpg");
	SetBlur("絵背景", true, 2, 500, 60, false);
	Move("絵背景", 300, -500, -380, Dxl2, false);
	Zoom("絵演立絵", 300, 2000, 2000, Dxl2, false);
	Zoom("絵背景", 300, 2000, 2000, Dxl2, false);
	DrawDelete("上背景", 150, 100, null, "zoom_01_00_1", true);

{	Fw("fw蒼葉_通常_rage");}
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0120]
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm06/9000390a01">
"&.&.&.!"


</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0121]
My legs start running on their own&.

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	CreateSE("SE02","se人体_動作_掴む01");
	MusicStart("SE02",0,700,0,1000,null,false);
	CreatePlainSP("絵板写", 5000);
	FadeFFR2("絵板写", 0,1000, 200, 0, 0, 20,null, true);
	Delete("絵板写");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0130]
I grab onto Mizuki and look into his eyes&.&.&.

&.&.&.And then&.

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
	TextBoxDelete(0);

//あきゅん「β１：ここから先はまた後で組み込みます」

	CreatePlainEX("絵板写", 2000);
	Fade("絵板写", 0, 500, null, true);
	Zoom("絵板写", 0, 1500, 1500, null, true);
	SetBlur("絵板写", true, 3, 500, 150, false);

//※どくん、と大きく心臓の音
	CreateSE("SE01","se人体_心臓_鼓動01");
	MusicStart("SE01",0,1000,0,1000,null,false);

	Fade("絵板写", 500, 0, null, false);
	Zoom("絵板写", 3000, 1000, 1000, null, true);

//※ここからミズキ暴露／ミズキの精神世界へ

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0140]
&.&.&.Suddenly&, my vision starts to go blurry&.

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	CreateSE("SCRAPINSE01","se人体_心臓_鼓動02L");
	MusicStart("SCRAPINSE01",2000,700,0,1000,null,true);
	DrawEffect("絵板写", 5000, "Ripple", 1000, 150, null);
	Fade("絵板写", 2000, 750, null, false);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0150]
I've felt this sensation somewhere before&.&.&.

That's right&, this&.&.&.

&.&.&.In Rhyme&.

The sensation I felt when I was fighting Noiz&.

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

	DrawEffect("絵板写", 5000, "Ripple", 150, 100, null);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0160]
&.&.&.No&.

I've known it from even longer ago&.

Much longer&.&.&.

A long time ago&.&.&.

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
	TextBoxDelete(0);

	ScrapIn("転送暴露a",3000);
	TiesMovieNEXT();
	Wait(2000);
	ScrapInEnd();

	Wait(2000);

//※次ファイル["dm0700_scr.nss"]

}
