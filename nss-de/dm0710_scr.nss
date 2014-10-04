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


scene dm0710_scr.nss_MAIN
{
$TEXTBOX_TYPE="暴露";
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
	#ev071ミズキ苦しむ=true;

//あきゅん「※：↓たしかミンクルートで回収したいって話だったはず」
	//#ev900昔の荒れてた蒼葉=true;

	//▼ルートフラグ、選択肢、次のGameName
	$PreGameName = $GameName;
	$GameName = "dm0720.nss";

	//▼頭痛レベル設定
	$HALevel=2;

}


scene dm0710_scr.nss
{

	//■シーンの頭に必ず記述
	$スクリプトバージョン = " $Revision:  $";
	$構成名 = ModuleFileName();
	$構文名 = $SYSTEM_present_process;
	SystemInit();

//―――――――――――――――――――――――――――――――――――――――
//―――――――――――――――――――――――――――――――――――――――

	PrintBG("上背景", 30000);

	//SoundPlay("@dm017",0,450,true);//暴露
	CreateColorSP("絵色黒", 5000, "000000");
	//OnBG(10,"bg101021_5_旧住民区通り裏路地01ドライジュース");
	//Move("@OnBG*", 0, 0, @0, null, true);
	//FadeBG(0,true);
	CreateTextureSP("絵背景", 10, 0, -270, "cg/bg/m/bg101021_5_旧住民区通り裏路地01ドライジュース_m.jpg");

	Delete("上背景");
	DrawDelete("絵色黒", 2000, 100, null, "blind_01_00_1", true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0010]
&.&.&.The place through the door was Dry Juice's HQ&.

Why?<k>
They should've been in here&.

It looks like the entire place has been vacated&.&.&.&.


</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	Fw("fw蒼葉_通常_shock2");
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0011]
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm07/1000010a01">
"!"


</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0012]
On the staircase where Dry Juice's tag was drawn&, the guy 
I just saw earlier comes over&, holding his head down&.

{
	CreateSE("SE01","se人体_足音_歩く01L");
	MusicStart("SE01",0,700,0,800,null,true);
}
I slowly walk up to him&.

I don't know what will happen&.

But I understand who he is&.

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	SetFrequency("SE01", 500, 200, null);
	SetVolumeEX("SE*", 500, 0, null);

{	Fw("fw蒼葉_通常_worry3");}
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0014]
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm07/1000020a01">
"&.&.&.Mizuki&."


</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	CreateSE("SE01","se人体_動作_衣擦れ26");
	MusicStart("SE01",0,700,0,1000,null,false);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0015]
Mizuki slowly raises his head&.

He looks distraught&, as if he was about to cry&.


</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	Fw("fwミズキ_洗脳_fear");
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0016]
//【ミズキ】
<voice name="ミズキ" class="ミズキ" src="voice/dm07/1000030b06">
"Aoba&.&.&."

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	Fw("fwミズキ_洗脳_fear");
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0020]
//【ミズキ】
<voice name="ミズキ" class="ミズキ" src="voice/dm07/1000040b06">
"Help me&, Aoba&."


</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
	TextBoxDelete(0);

	CreateSE("SE01","se擬音_水_はねるゲル01");
	MusicStart("SE01",0,700,0,1000,null,false);
	CreateTextureEX("絵演効果零", 110, Center, Middle, "cg/anime/center/bloodA_4.png");
	CreateTextureEXmul("絵演効果", 100, Center, Middle, "cg/anime/center/bloodA_8.png");
	//OnBG(10,"bg101021_5_旧住民区通り裏路地01モルヒネ");
	//Move("@OnBG*", 0, 0, @0, null, true);
	//FadeBG(0,true);
	CreateTextureSP("絵背景", 10, 0, -270, "cg/bg/m/bg101021_5_旧住民区通り裏路地01モルヒネ_m.jpg");

//覇：応急処置
	Zoom("絵演効果", 0, 1005, 1005, null, true);
	Zoom("絵演効果零", 0, 1010, 1010, null, true);

	FadeFFR("絵演効果零", 0,1000, 200, 0, 0, 20,null, false);
	Fade("絵演効果零", 1000, 0, null, false);
	FadeFFR2("絵演効果", 0,1000, 200, 0, 0, 30,null, true);
	Wait(300);
	SetVertex("絵演効果", 512, 0);
	Zoom("絵演効果", 7000, 1005, 3000, AxlAuto, false);
	DrawDelete("絵演効果", 3000, 800, null, "slide_02_01_1", true);
	Delete("絵演効果零");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0021]
Suddenly&, the tag art turns black and blood is splashed 
everywhere&.

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

{	Fw("fw蒼葉_通常_worry4");}
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0022]
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm07/1000050a01">
"What happened to you&.&.&.?"

{	St("C",740, @0,@0,"buミズキ_洗脳_fear");
	FadeSt("C",200,true);}
//【ミズキ】
<voice name="ミズキ" class="ミズキ" src="voice/dm07/1000060b06">
"I don't know what I should do&."

{	Fw("fw蒼葉_通常_worry3");}
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm07/1000070a01">
"What&.&.&.?"

{	St("C",740, @0,@0,"buミズキ_洗脳_fear");
	FadeSt("C",200,true);}
//【ミズキ】
<voice name="ミズキ" class="ミズキ" src="voice/dm07/1000080b06">
"About Dry Juice&."

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	St("C",740, @0,@0,"buミズキ_洗脳_fear");
	FadeSt("C",200,true);
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0030]
//【ミズキ】
<voice name="ミズキ" class="ミズキ" src="voice/dm07/1000090b06">
"Rib is so fun&, and I love it so much&.&.&. That's why I'm
 always thinking seriously about Dry Juice&."

//【ミズキ】
<voice name="ミズキ" class="ミズキ" src="voice/dm07/1000100b06">
"What kind of team we need to be so everyone enjoys it&, so
 no one ever comes to hate it&. I've been thinking about how
 to do that&."

//【ミズキ】
<voice name="ミズキ" class="ミズキ" src="voice/dm07/1000110b06">
"I was thinking of how we could make it seem like we were
 family&."

{	Fw("fw蒼葉_通常_worry4");}
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm07/1000120a01">
"I understand&. That's why Dry Juice became the largest
 team&."

{	DeleteFw();}
//【ミズキ】
<voice name="ミズキ" class="ミズキ" src="voice/dm07/1000130b06">
"But&.&.&. That's just not good enough anymore&."


</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0038]
Mizuki hangs his head in frustration&, balling fists with 
his hands&.


</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

{	St("C",740, @0,@0,"buミズキ_洗脳_angry");
	FadeSt("C",200,true);}
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0039]
//【ミズキ】
<voice name="ミズキ" class="ミズキ" src="voice/dm07/1000140b06">
"Rhyme's becoming so popular that it's not working anymore&.
 Everyone is losing interest in Rib&, it was like a dream
 from the past&.&.&. And they just throw it away like that&."

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0040]
//【ミズキ】
<voice name="ミズキ" class="ミズキ" src="voice/dm07/1000150b06">
"In the end&, both Rib and Rhyme are just games&. People
 always like new and fun things more&. But I&.&.&."

//【ミズキ】
<voice name="ミズキ" class="ミズキ" src="voice/dm07/1000160b06">
"Both Rib and Dry Juice&, they were so important to me that
 I didn't want to let go of them!"

//【ミズキ】
<voice name="ミズキ" class="ミズキ" src="voice/dm07/1000170b06">
"That's why getting serious about it was stupid&, but I
 couldn't just let go of it so quickly&."

{	St("C",740, @0,@0,"buミズキ_洗脳_fear");
	FadeSt("C",200,true);}
//【ミズキ】
<voice name="ミズキ" class="ミズキ" src="voice/dm07/1000180b06">
"Our members are steadily moving over to Rhyme&, and we
 aren't getting many new recruits&.&.&. All the effort I put
 into friendships I made are crumbling away&."


</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0046]
It pains me to watch Mizuki say these things while looking 
so miserable&.&.&. <k>I clench my teeth&.

I know that Mizuki holds Dry Juice very close to him&.

But for him to brood like this is&.&.&. 

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0050]
I've been close to him for a long time&, but I've never 
noticed how much he was hurting inside&.

It makes me so frustrated to realize I've been so weak&.

If only I could talk about personal things like that with  Mizuki&.&.&.


</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0052]
//【ミズキ】
<voice name="ミズキ" class="ミズキ" src="voice/dm07/1000190b06">
"It bothered me everyday&, but I couldn't figure out what
 to do about it&. And then I met a guy that said he was a
 Morphine member&."

{	Fw("fw蒼葉_通常_worry3");}
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm07/1000200a01">
"Morphine&.&.&."

{	DeleteFw();}
//【ミズキ】
<voice name="ミズキ" class="ミズキ" src="voice/dm07/1000210b06">
"Since Dry Juice was the best team out there&, I didn't join Morphine&."

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0060]
//【ミズキ】
<voice name="ミズキ" class="ミズキ" src="voice/dm07/1000220b06">
"At the start&, he was suspicious as hell&, and said what I
 was thinking all the time&. But then I met more members
 from Morphine&.&.&.and eventually I thought it was okay&."

//【ミズキ】
<voice name="ミズキ" class="ミズキ" src="voice/dm07/1000230b06">
"If they knew I became a member of Morphine&, then everyone
 wouldn't go to Rhyme instead&."

//【ミズキ】
<voice name="ミズキ" class="ミズキ" src="voice/dm07/1000240b06">
"And that I could finally boast about Dry Juice again&."

{	Fw("fw蒼葉_通常_worry4");}
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm07/1000250a01">
"Then you really entered Morphine&.&.&."

{	DeleteFw();}
//【ミズキ】
<voice name="ミズキ" class="ミズキ" src="voice/dm07/1000260b06">
"Yeah&. But that was a huge mistake&. Morphine wasn't what I
 thought it was&. Morphine&, they're&.&.&."

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

//あきゅん「演出：衝撃度のあるような演出、迫力感のあるシーンにする。ホラー調とかに」
//あきゅん「演出：セリフは結構埋めて、音声ＳＥとかに」
//あきゅん「演出：モノクロかな、シーン通して血だけ色つける」
//あきゅん「β１：ここの演出まだ」

//※回想フラッシュバック
	CreateSE("SE01","se擬音_回想_フラッシュバック02");
	MusicStart("SE01",0,700,0,1000,null,false);
	CreateSE("SE01a","se擬音_回想_フラッシュバック03");
	MusicStart("SE01a",0,700,0,1000,null,false);
	CreateColorSP("絵色白", 4000, "FFFFFF");
	Wait(30);

	CreateColorSP("絵色黒", 1000, "000000");

	FadeDelete("絵色白", 70, null, true);

//ドライジュースの溜まり場、ざわざわ。
//殴り合うケンカの音、どさどさ倒れる。

	CreateSE("SEL01","se環境_戦闘_乱闘01L.ogg");
	MusicStart("SEL01",0,700,0,1000,null,true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0070]
//【ドライジュースメンバーＡ】
<voice name="ドライジュースメンバーＡ" class="ドライジュースメンバーＡ" src="voice/dm07/1000270e51">
"Ugh&.&.&.&."

{
	CreateSE("SE01","se人体_衝撃_転倒02複数");
	MusicStart("SE01",0,700,-3000,1000,null,false);
}
//【ドライジュースメンバーＢ】
<voice name="ドライジュースメンバーＢ" class="ドライジュースメンバーＢ" src="voice/dm07/1000280e52">
"You know&, Mizuki&.&.&."


</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	SetVolumeEX("SEL*", 150, 0, null);
	CreateSE("SE02","se人体_衝撃_転倒03複数");
	MusicStart("SE02",0,700,3000,1000,null,false);

//呆然と立ち尽くすミズキ。
//目の前の光景に愕然としてる。

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0073]
//【ミズキ】
<voice name="ミズキ" class="ミズキ" src="voice/dm07/1000290b06">
"No&.&.&. You're lying&.&.&."

{
//モルヒネ軍団の足音とか
	CreateSE("SE011","se人体_足音_歩く01");
	MusicStart("SE11",0,700,0,900,null,false);
	CreateSE("SE012","se人体_足音_歩く01ふらつき");
	MusicStart("SE12",0,700,0,1200,null,false);
	CreateSE("SE013","se人体_足音_歩く01ゆっくり");
	MusicStart("SE13",0,700,0,1200,null,false);
}

//【ミズキ】
<voice name="ミズキ" class="ミズキ" src="voice/dm07/1000300b06">
"Dry Juice finally became a part of Morphine&, isn't that
 what I told you!? But why&.&.&."

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	SetVolumeEX("SE*", 150, 0, null);
	CreateSE("SE01","se擬音_回想_フラッシュバック02");
	MusicStart("SE01",0,700,0,1000,null,false);
	CreateSE("SE01a","se擬音_回想_フラッシュバック03");
	MusicStart("SE01a",0,700,0,1000,null,false);
	CreateColorSP("絵色白", 4000, "FFFFFF");
	Wait(30);
	FadeDelete("絵色白", 70, null, true);


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0080]
//【ミズキ】
<voice name="ミズキ" class="ミズキ" src="voice/dm07/1000310b06">
"Don't mess with me&.&.&.&. Damn it&.&.&.&.!!"

//【ミズキ】
<voice name="ミズキ" class="ミズキ" src="voice/dm07/1000320b06">
"&.&.&.&.&.Ugaahhhhhhhh!!!"


</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
	TextBoxDelete(0);

//※血しぶき
	SL_centerdamN(@0, @0,2000);
	SL_centerdamfadeN2(10);

//※回想終わり

//あきゅん「演出：ここまで一瞬の出来事として扱うので、ここの元の画面への戻しはまったりやらない」
//あきゅん「演出：血しぶきのＳＥは多分ださいので流さない」

	CreateSE("SE01","se擬音_回想_フラッシュバック02");
	MusicStart("SE01",0,700,0,1000,null,false);
	CreateSE("SE01a","se擬音_回想_フラッシュバック03");
	MusicStart("SE01a",0,700,0,1000,null,false);
	CreateColorSP("絵色白", 4000, "FFFFFF");
	Wait(30);
	Delete("絵色黒");
	DeleteAllSt(0,true);
	FadeDelete("絵色白", 70, null, true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0084]
Mizuki's facial expression suddenly changes&.

{
	CreateSE("SE01","se人体_衝撃_転倒02");
	MusicStart("SE01",0,700,0,1000,null,false);
}
Holding on to his stomach in pain&, he falls to the ground 
on his knees&.


</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

{	Fw("fw蒼葉_通常_worry4");}
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0086]
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm07/1000330a01">
"Mizuki?"

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	CreateSE("SE01","se人体_動作_衣擦れ17");
	MusicStart("SE01",0,700,0,1000,null,false);

	DeleteFw();
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0090]
//【ミズキ】
<voice name="ミズキ" class="ミズキ" src="voice/dm07/1000340b06">
"Ugh&, urghhh&, aaaaahhhhh&.&.&."

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	CreateTextureEX("絵ＥＶ", 1100, Center, Middle, "cg/ev/ev071ミズキ苦しむ.jpg");
	CreateTextureEX("絵ＥＶ上", 1110, -490, -45, "cg/ev/l/ev071ミズキ苦しむ_l.jpg");
	Zoom("絵ＥＶ上", 0, 1500, 1500, null, true);
	SetBlur("絵ＥＶ上", true, 3, 500, 30, false);

	CreateSE("SE01","se擬音_効果_ドン01");
	CreateSE("SE01","se擬音_効果_ドン03");
	MusicStart("SE01",0,1200,0,1000,null,false);
	MusicStart("SE01",0,1200,0,1000,null,false);

	FadeFFR2("絵ＥＶ上", 0,1000, 100, 0, 0, 60,null, true);
	Fade("絵ＥＶ", 0, 1000, null, true);
	Delete("絵ＥＶ上");
	SoundPlay("@dm017",0,450,true);//暴露

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0091]
Mizuki tilts his head upward as if it was tearing apart&.

His eyes turn in every direction&, and he opens his mouth 
to let out a hoarse scream&. Large amounts of sweat drop 
from his chin and pool on the ground&.

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

{	Fw("fw蒼葉_通常_shout2");}
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0093]
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm07/1000350a01">
"Hey&, Mizuki!"

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	SetBlur("絵ＥＶ", true, 3, 500, 200, false);
	FadeFFR2("絵ＥＶ", 0,1000, 200, 0, 0, 30,null, true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0094]
//【ミズキ】
<voice name="ミズキ" class="ミズキ" src="voice/dm07/1000360b06">
"Aggggghhhhhhhhhh!"

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

{	Fw("fw蒼葉_通常_shout2");}
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0095]
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm07/1000370a01">
"Mizuki!"

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	CreateTextureEX("絵演背景", 1310, Center, -110, "cg/ev/m/ev071ミズキ苦しむ_m.jpg");
	CreateSE("SE01","se人体_動作_掴む01");
	MusicStart("SE01",0,700,0,1000,null,false);
	FadeFFR2("絵演背景", 0,1000, 200, 0, 0, 20,null, true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0100]
I rush over to Mizuki and grab hold of his shoulders&.

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
	TextBoxDelete(0);

//※蒼葉、ぐわっと自分の過去を走馬灯のように思い出す。
//荒れていた自分が笑っている。
//ライムをやっていた。
//その時の対戦者は蒼葉に潰されて倒れる。

	CreateTextureEX("絵演蒼葉荒", 1410, 0, 0, "cg/ev/l/ev900昔の荒れてた蒼葉_l.jpg");
	CreateTextureEXmul("絵演蒼葉荒膜", 1420, Center, Middle, "cg/data/noize_01_00_0.png");
	Zoom("絵演蒼葉荒膜", 0, 1100, 1100, null, true);

	CreateSE("SE01","se擬音_効果_火花01");
	MusicStart("SE01",0,700,0,1000,null,false);
	CreateSE("SE01","se擬音_回想_フラッシュバック03");
	MusicStart("SE01",0,700,0,1000,null,false);
	Shake("絵演蒼葉荒膜", 1000, 0, 40, 0, 0, 1000, null, false);
	Fade("絵演蒼葉荒膜", 0, 1000, null, true);
	FadeFFR2("絵演蒼葉荒", 0,1000, 200, 0, 0, 40,Dxl1, false);

	Wait(40);

	Fade("絵演蒼葉荒", 0, 0, null, true);
	Fade("絵演蒼葉荒膜", 0, 0, null, true);

	Shake("絵演蒼葉荒膜", 1000, 0, 40, 0, 0, 1000, null, false);
	Move("絵演蒼葉荒", 0, -1024, -440, null, true);
	Fade("絵演蒼葉荒膜", 0, 1000, null, true);
	FadeFFR2("絵演蒼葉荒", 0,1000, 200, 0, 0, 40,Dxl1, false);
	Wait(40);
	Fade("絵演蒼葉荒", 0, 0, null, true);
	Fade("絵演蒼葉荒膜", 0, 0, null, true);

	Shake("絵演蒼葉荒膜", 1000, 0, 40, 0, 0, 1000, null, false);
	Zoom("絵演蒼葉荒", 0, 2000, 2000, null, true);
	Move("絵演蒼葉荒", 0, -885, -90, null, true);
	Fade("絵演蒼葉荒膜", 0, 1000, null, true);
	FadeFFR2("絵演蒼葉荒", 0,1000, 200, 0, 0, 40,Dxl1, false);
	Wait(40);
	Fade("絵演蒼葉荒", 0, 0, null, true);
	Fade("絵演蒼葉荒膜", 0, 0, null, true);


{	Fw("fw蒼葉_通常_shock2");}
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0101]
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm07/1000380a01">
"&.&.&.!?"

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0102]
What? What's going on?

Just now&.&.&.

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

//※頭痛レベル：２
//※ＳＥ：ずきん、と頭痛（以降、ずっとずきずき）
	CreateSE("SE11","se人体_頭痛_痛む01L");
	MusicStart("SE11",0,700,0,800,null,true);
$HALevel=2;
	HAFade(2000, 0,false);

	CreateTextureEXmul("絵演手動頭痛", 3000, Center, Middle, "cg/ef/ef蒼葉黒強頭痛a.jpg");
	Zoom("絵演手動頭痛", 0, 1100, 1100, null, true);
	SetBlur("絵演手動頭痛", true, 3, 500, 30, false);

	CreateProcessEX("プロセス", "LProc_dm0710_scr_01Act");
	Request("プロセス", Start);

	Fw("fw蒼葉_通常_pinch");
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0110]
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm07/1000390a01">
"&.&.&.!"

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	SetFrequency("SE11", 0, 1000, null);
	CreateTextureEXmul("絵ＥＶ２", 1510, 570, 450, "cg/ev/l/ev900昔の荒れてた蒼葉_l.jpg");
	Zoom("絵ＥＶ２", 0, 2000, 2000, null, true);

	Fade("絵ＥＶ２", 0, 1000, null, true);
	Wait(30);
	Fade("絵ＥＶ２", 70, 0, null, true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0111]
My head hurts&.&.&.

I can see something&.

{
	SetFrequency("SE11", 0, 1400, null);
	Fade("絵ＥＶ２", 0, 1000, null, true);
	Wait(30);
	Fade("絵ＥＶ２", 0, 0, null, true);
	Wait(30);
	Fade("絵ＥＶ２", 0, 1000, null, true);
	Wait(30);
	Fade("絵ＥＶ２", 0, 0, null, true);
}
These images&.&.&.

These&.&.&. memories&.

{
	SetFrequency("SE11", 0, 1800, null);
	Fade("絵ＥＶ２", 0, 1000, null, true);
	Wait(30);
	Fade("絵ＥＶ２", 0, 0, null, true);
	Wait(30);
	Fade("絵ＥＶ２", 0, 1000, null, true);
	Wait(30);
	Fade("絵ＥＶ２", 0, 0, null, true);
	Wait(30);
	Fade("絵ＥＶ２", 0, 1000, null, true);
	Wait(30);
	Fade("絵ＥＶ２", 0, 0, null, true);
}
These are&.&.&.

My&.&.&.


</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	SetVolumeEX("SE*", 1000, 0, null);
	SetVolumeEX("@dm*", 1000, 0, null);
	Delete("絵ＥＶ２");
	Request("プロセス", Stop);
	Delete("絵演手動頭痛");

	CreatePlainSP("絵板写", 1991);
	CreateEffectSP("絵板写甲", 1990, Center, Middle, 1024, 576, "Plain");
	CreateEffectSP("絵板写乙", 1990, Center, Middle, 1024, 576, "Plain");
	CreateEffectSP("絵板写兵", 1990, Center, Middle, 1024, 576, "Plain");
	SetVertex("絵板写*", center, middle);

	MoveFFP1("@絵板写*",300);
	SetBlur("絵板写*", true, 3, 200, 200, false);
	FadeDelete("絵板写", 500, null, false);
	Zoom("絵板写甲", 8000, 1250, 1250, Axl1, false);
	Zoom("絵板写乙", 8000, 1500, 1500, Axl1, false);
	Zoom("絵板写兵", 8000, 2000, 2000, Axl1, false);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0115]
//【ミズキ】
<voice name="ミズキ" class="ミズキ" src="voice/dm07/1000400b06">
"Ahhhhhhhhhhhhhhhhh!"

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
	TextBoxDelete(0);

//※蒼葉、バチンとミズキの世界から弾き出されて現実世界へ

	CreateSE("SE01","se擬音_効果_ノイズ01");
	MusicStart("SE01",0,700,0,1000,null,false);
	CreateSE("SE02","se擬音_効果_キーン01");
	MusicStart("SE02",0,700,0,2000,null,false);
	CreateColorSP("絵色黒", 15000, "000000");

	Wait(1000);

	ClearFadeAll(1000, true);

//※次ファイル["dm0720.nss"]

}
