//<continuation number="520">
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


scene dm2250.nss_MAIN
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
	$GameName = "dm2260.nss";

	//▼頭痛レベル設定
	$HALevel=2;
}


scene dm2250.nss
{

	//■シーンの頭に必ず記述
	$スクリプトバージョン = " $Revision:  $";
	$構成名 = ModuleFileName();
	$構文名 = $SYSTEM_present_process;
	SystemInit();


//―――――――――――――――――――――――――――――――――――――――

//cono「演出：前のシーンまだBGM入っていないので後ほど調整した方がよさそう」

	PrintBG("上背景", 30000);

	OnBG(10,"bg301041_5_プラチナジェイル通り路地02");
	FadeBG(0,true);

	FadeDelete("上背景", 0, null, true);

	CreateSE("SE01","se人体_衝撃_転倒02");//あきゅん「ＳＥ：se人体_衝撃_転倒02」
	MusicStart("SE01",0,700,0,1000,null,false);

//※数秒の間
	Wait(500);

//※ずくん、ずくんと頭が痛い
//※頭痛レベル：ここから２
	//CreateSE("SE01","ＳＥダミー");//あきゅん「ＳＥ：se人体_頭痛_痛む01」
	//MusicStart("SE01",0,700,0,1000,null,false);
	//頭痛エフェクト(0)
$HALevel=2;
	HAFade(2000, 0,false);


	Fw("fw蒼葉_通常_pinch");
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0010]
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm22/5000010a01">
"&.&.&.Ha&, haah&.&.&. hah&."


</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0011]
&.&.&.Shit&.

My brain feels like it's being sliced apart&.

It hurts to breathe after sprinting full speed&.

&.&.&.But&.

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	St("C",740, @0,@0,"buノイズ_通常_serious");
	FadeSt("C",200,true);
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0013]
//【ノイズ】
<voice name="ノイズ" class="ノイズ" src="voice/dm22/5000020a03">
"&.&.&.Hey&."

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0014]
Noiz looks at my face&.

Across from me&, Akushima was lying down&.

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0020]
Noiz&.&.&.
He somehow made it in time&.&.&.

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	Fw("fw蒼葉_通常_pinch");
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0021]
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm22/5000030a01">
"&.&.&.That's good&."


</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0022]
The relief rises from the bottom of my heart&.


</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	St("C",740, @0,@0,"buノイズ_通常_angry");
	FadeSt("C",200,true);
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0023]
//【ノイズ】
<voice name="ノイズ" class="ノイズ" src="voice/dm22/5000040a03">
"&.&.&.&.&."


</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0024]
But Noiz was glaring at me with dangerous eyes&.


</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	Fw("fw蒼葉_通常_shock2");
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0025]
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm22/5000050a01">
"&.&.&.?"

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0030]
//【ノイズ】
<voice name="ノイズ" class="ノイズ" src="voice/dm22/5000060a03">
"&.&.&.That voice just now&."

{
	Fw("fw蒼葉_通常_shock2");
}
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm22/5000070a01">
"Voice?"

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

//あきゅん「※：再生位置ずらしました(2/21)」
	//SoundPlay("@dm015",0,450,true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0031]
//【ノイズ】
<voice name="ノイズ" class="ノイズ" src="voice/dm22/5000080a03">
"I heard it when I lost to you&.&.&. So you really can do it&."

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

//	CreateSE("SE01","se人体_心臓_鼓動02");
//	MusicStart("SE01",0,700,0,1000,null,false);

	Fw("fw蒼葉_通常_worry4");
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0032]
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm22/5000090a01">
"Ah&.&.&."

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	St("C",740, @0,@0,"buノイズ_通常_angry2");
	FadeSt("C",200,true);
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0033]
//【ノイズ】
<voice name="ノイズ" class="ノイズ" src="voice/dm22/5000100a03">
"'I didn't know' my ass&. You always pretended you didn't&,
 but you really could&. You used it in Rhyme before&, didn't
 you?"

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	St("C",740, @0,@0,"buノイズ_通常_angry");
	FadeSt("C",200,true);
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0040]
//【ノイズ】
<voice name="ノイズ" class="ノイズ" src="voice/dm22/5000110a03">
"Then let's do it&. Once more&, right now&. Hurry it up&."

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	DeleteAllSt(200,true);

	CreateSE("SE01","se人体_動作_衣擦れ25");
	MusicStart("SE01",0,700,0,1000,null,false);

	BGPlainShake(50,300,0,10,0,0,1000,null,true);

	Fw("fw蒼葉_通常_pain");
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0041]
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm22/5000120a01">
"&.&.&.!"

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	DeleteFw();

	CreateTextureEX("絵背景100", 100, -1023, -427, "cg/bg/l/bg301041_5_プラチナジェイル通り路地02_l.jpg");
	Move("絵背景100", 300, -1023, -573, Dxl2, false);
	Fade("絵背景100", 300, 1000, null, true);

	CreateSE("SE01","se人体_衝撃_転倒01");//あきゅん「ＳＥ：se人体_衝撃_転倒01」
	MusicStart("SE01",0,700,0,1000,null,false);

	CreatePlainSP("絵板写", 990);
	Shake("絵板写", 200, 0, 20, 0, 0, 500, null, true);
	Delete("絵板写");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0042]
Noiz pushes down on my shoulders&.
With no way to fight back&, I'm pinned down to the ground&.

Noiz's silently furious eyes pierce me&.

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	Fw("fw蒼葉_通常_hard");
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0043]
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm22/5000130a01">
"&.&.&.!"

{
	Fw("fwノイズ_通常_angry");
}
//【ノイズ】
<voice name="ノイズ" class="ノイズ" src="voice/dm22/5000140a03">
"Hurry up&."

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	Fw("fw蒼葉_通常_hard");
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0050]
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm22/5000150a01">
"I said I can't&.&.&.!"


</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0051]
I reluctantly used it just now&.&.&. 
And I really don't want to use it again&.

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
	TextBoxDelete(0);

	CreatePlainSP("絵板写", 10000);

//※白蒼葉の幻影、一瞬
	CreateColorEX("絵色黒", 12000, "000000");
	Fade("絵色黒", 0, 1000, null, true);

	TemptationNoizSet("絵演黒蒼葉誘惑砂嵐覆",1102);
	TemptationAobaSet("絵演黒蒼葉誘惑",1100,-501,30,"cg/ev/l/ev900もう１人の蒼葉_l.jpg",2000,2000);

	CreateColorEX("絵演黒蒼葉誘惑黒隠", 1110, "000000");
	DrawTransition("絵演黒蒼葉誘惑黒隠", 1, 0, 500, 100, null, "cg/data/slide_05_00_0.png", true);

	$HALevel=0;
	Fade("絵演黒蒼葉誘惑黒隠", 0, 1000, null, true);
	Fade("絵演黒蒼葉誘惑", 0, 1000, null, true);
	TemptationNoizFade("絵演黒蒼葉誘惑砂嵐覆",0,null,true);
	Position("@絵演黒蒼葉誘惑", $TANx1, $TANy1);

	Delete("絵板写");

	CreateSE("SE01","se擬音_効果_ドン01");//あきゅん「ＳＥ：se擬音_効果_ドン01」
	MusicStart("SE01",0,1000,0,1000,null,false);
	TemptationAobaIn("絵色黒");
	TemptationAobaOut(50,true);
	TemptationDelete("@絵演黒蒼葉誘惑黒隠");
	Delete("絵色黒");

$HALevel=2;

	Fw("fwノイズ_通常_angry");
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0052]
//【ノイズ】
<voice name="ノイズ" class="ノイズ" src="voice/dm22/5000160a03">
"Use it&."

{
	Fw("fw蒼葉_通常_hard2");
}
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm22/5000170a01">
"I said- I- can't&.&.&.!"

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	DeleteFw();

	CreateSE("SE01","se人体_動作_衣擦れ25");//あきゅん「ＳＥ：se人体_動作_絞める01」
	MusicStart("SE01",0,700,0,800,null,false);

	CreateSE("SE02","se人体_動作_絞める01");
	MusicStart("SE02",0,700,0,1000,null,false);
	CreatePlainSP("絵板写", 990);
	Shake("絵板写", 200, 0, 15, 0, 0, 500, null, true);
	Delete("絵板写");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0054]
Noiz's hands push my shoulders harder into the floor&.

The pain of having both my bones and muscles pushed into 
the ground twists my expression&.

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0060]
Why&.&.&. do I have to look into those eyes of his&.
Even though I just saved him&.&.&.

It's not that I wouldn't do it again&.
But&.&.&.

Why do I have to be pushed down and give in to his 
demands&.&.&.!?

A bitterness burned into my throat as I opened my mouth&.


</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	Fw("fw蒼葉_通常_hard2");
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0065]
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm22/5000180a01">
"You too&, why have you been sticking to me all this time!?"

//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm22/5000190a01">
"Because of Rhyme- because of losing&.&.&. I don't get it at
 all!"

{
	Fw("fwノイズ_通常_serious");
}
//【ノイズ】
<voice name="ノイズ" class="ノイズ" src="voice/dm22/5000200a03">
"&.&.&.&.&."

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	SoundPlay("@dm015",0,450,true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0070]
At that moment&, Noiz's eyes go cold&.


</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	Fw("fwノイズ_通常_serious");
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0071]
//【ノイズ】
<voice name="ノイズ" class="ノイズ" src="voice/dm22/5000210a03">
"&.&.&.Then don't try to save me&."

{
	Fw("fwノイズ_通常_normal2");
}
//【ノイズ】
<voice name="ノイズ" class="ノイズ" src="voice/dm22/5000220a03">
"You may have saved me for your own self-satisfaction&,
 but I would've just gotten what I deserved if I died
 back there&."

//【ノイズ】
<voice name="ノイズ" class="ノイズ" src="voice/dm22/5000230a03">
"Since I'm the one who challenged him&, you had no right to  intervene&."

{
	Fw("fwノイズ_通常_angry");
}
//【ノイズ】
<voice name="ノイズ" class="ノイズ" src="voice/dm22/5000240a03">
"But why did you go and save me? Just leave me alone&. If
 you think about it&, you're the one who's making no sense
 here&."

{
	Fw("fw蒼葉_通常_shock2");
}
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm22/5000250a01">
"&.&.&.&.&."

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	Fw("fwノイズ_通常_angry2");
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0080]
//【ノイズ】
<voice name="ノイズ" class="ノイズ" src="voice/dm22/5000260a03">
"You know well what I want&, but you still haven't replied&."

//【ノイズ】
<voice name="ノイズ" class="ノイズ" src="voice/dm22/5000270a03">
"And yet you save me; what the hell is up with that?"

{
	Fw("fwノイズ_通常_angry");
}
//【ノイズ】
<voice name="ノイズ" class="ノイズ" src="voice/dm22/5000280a03">
"Well&, it was pretty convenient that I was there with you&. Though I don't know what you were trying to get out of it&."

{
	Fw("fwノイズ_通常_angry");
}
//【ノイズ】
<voice name="ノイズ" class="ノイズ" src="voice/dm22/5000290a03">
"But whatever&, I don't even need treatment for these
 wounds&."

{
	Fw("fw蒼葉_通常_shock2");
}
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm22/5000300a01">
"&.&.&.&.&."

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

//	Fw("fw蒼葉_通常_normal");
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0090]
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm22/5000310a01">
"&.&.&.Haha&."


</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0091]
A dry laugh spills out of my mouth when I hear Noiz say 
that&.

So he thought I just had him around for convenience's sake&.
&.&.&.So that's how it is&.

So he thinks I'm that kind of guy&.

Does he think that I was trying to get something out of 
him by kissing him?

I&.&.&. can't even feel that shocked anymore&.


</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	Fw("fw蒼葉_通常_worry3");
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0099]
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm22/5000320a01">
"&.&.&.So that's how you see me?"

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	Fw("fwノイズ_通常_normal2");
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0100]
//【ノイズ】
<voice name="ノイズ" class="ノイズ" src="voice/dm22/5000330a03">
"Was there anything I missed?"

{
	Fw("fw蒼葉_通常_worry3");
}
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm22/5000340a01">
"There is&. A lot&. Isn't there anything you care about&,
 maybe even worry about?"

{
	Fw("fwノイズ_通常_normal3");
}
//【ノイズ】
<voice name="ノイズ" class="ノイズ" src="voice/dm22/5000350a03">
"No&."


</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0104]
Noiz denies it right away&.


</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	Fw("fwノイズ_通常_angry");
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0105]
//【ノイズ】
<voice name="ノイズ" class="ノイズ" src="voice/dm22/5000360a03">
"When it comes to people&, I'm always looking for something
 in return&. That's why I care about people&, so I can feel
 good about myself&. There are no reasons other than that&."

{
	Fw("fw蒼葉_通常_worry4");
}
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm22/5000370a01">
"Wrong&."

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0110]
That's a weird way of thinking&.
And one that's too sad&, at that&.&.&.


</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	Fw("fw蒼葉_通常_worry3");
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0111]
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm22/5000380a01">
"I feel a little reassured when you're here&, but in no way
 are you just for convenience&."

{
	Fw("fw蒼葉_通常_worry4");
}
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm22/5000390a01">
"I wasn't ever trying to get something out of you&. How can
 you let yourself think that way after all of this?"

{
	Fw("fwノイズ_通常_angry");
}
//【ノイズ】
<voice name="ノイズ" class="ノイズ" src="voice/dm22/5000400a03">
"Reassuring is just a pretty way of saying convenient&."

{
	FwPro("fw蒼葉_通常_worry4",5000,"fw蒼葉_通常_sad");
//	Fw("fw蒼葉_通常_worry3");
}
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm22/5000410a01">
"I said you're wrong&. It's not like that&.&.&. I need to keep
 a watch out for you&. It's just that&.&.&. I don't want to
 leave you alone&."

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	Fw("fwノイズ_通常_normal2");
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0120]
//【ノイズ】
<voice name="ノイズ" class="ノイズ" src="voice/dm22/5000420a03">
"Sorry&, but I'm far stronger than you&."

{
	Fw("fw蒼葉_通常_worry4");
}
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm22/5000430a01">
"I know&. I didn't mean that&, either&. It's not about being
 strong or weak&."


</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	CreateSE("SE01","se人体_動作_抱く01");
	MusicStart("SE01",0,1000,0,1000,null,false);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0123]
Unable to use my words too well&, I just grasped Noiz's 
hand on my shoulder&.

He immediately tries to pull away&.

But I won't let go&.


</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	Fw("fw蒼葉_通常_serious");
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0125]
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm22/5000440a01">
"I'll treat your wounds no matter who your opponent is&.
 You're a very inconvenient person to me&."

//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm22/5000450a01">
"I have no reason for it&. That's what I mean&."

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	Fw("fwノイズ_通常_normal2");
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0130]
//【ノイズ】
<voice name="ノイズ" class="ノイズ" src="voice/dm22/5000460a03">
"Why would you want my wounds to heal quickly if you had no reason for it? You don't get anything out of me having
 some utility value anyway&."

{
	Fw("fw蒼葉_通常_shout");
}
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm22/5000470a01">
"Listen! I've said it over and over&, things like that have
 nothing to do with this&."

{
	Fw("fwノイズ_通常_normal3");
}
//【ノイズ】
<voice name="ノイズ" class="ノイズ" src="voice/dm22/5000480a03">
"&.&.&.I don't get you&. I seriously can't understand&. You're a weird creature&."

{
	Fw("fw蒼葉_通常_worry3");
}
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm22/5000490a01">
"You're way weirder than I could ever be&."


</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	DeleteFw();

	CreateSE("SE01","se物体_ベッド_寝る01");//cono「ＳＥ：立ち上がる」
	MusicStart("SE01",0,700,0,1200,null,false);

	Move("絵背景100", 500, @0, @100, Dxl1, false);
	FadeDelete("絵背景100", 500, null, true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0138]
When I let go of my clasped hand&, Noiz stands up with a 
sour look on his face&.

&.&.&.It looks like his anger has subsided for now&.

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
	TextBoxDelete(0);

	HAFade(2000, 0,false);

	CreateSE("SE01","se人体_動作_衣擦れ05");
	MusicStart("SE01",0,700,0,1000,null,false);
	SetVolumeEX("SE*", 1500, 0, null);

	Fw("fw蒼葉_通常_pinch");
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0139]
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm22/5000500a01">
"Owowow&.&.&."

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0140]
Exhausted&, my headache came on harder than it did before&.

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	St("C",740, @0,@0,"stノイズ_通常_angry");
	FadeSt("C",200,true);
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0141]
//【ノイズ】
<voice name="ノイズ" class="ノイズ" src="voice/dm22/5000510a03">
"&.&.&.For your information&, our conversation isn't over yet&.
 I don't have any intention of leaving you be&. You're
 definitely going to fight with me&."

{
	Fw("fw蒼葉_通常_serious");
}
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm22/5000520a01">
"Yeah&."


</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0150]
While getting up&, I held eye contact with Noiz and nodded  my head&.

{
	DeleteAllSt(200,true);
}
Either way&, Noiz helped me save Granny&.

So I have to fufill his request in exchange&.

And now&, I can honestly say that I won't run away from it&.

Since it's an undeniable reality that I've done Rhyme 
before&.

I don't know when it'll happen&.&.&. but it will&, some day&.

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	SetVolumeEX("@dm*", 2000, 0, null);

//※次ファイル["dm2260.nss"]

}
