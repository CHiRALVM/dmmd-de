//<continuation number="2300">
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


scene dm1552h.nss_MAIN
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
	#ev155紅雀ＥＤラブＨ挿入=true;
	#ev155紅雀ＥＤラブＨ挿入a=true;
	#ev155紅雀ＥＤラブＨ挿入b=true;
	#ev155紅雀ＥＤラブＨ挿入c=true;


	//▼ルートフラグ、選択肢、次のGameName
	$PreGameName = $GameName;
	$GameName = "dm1560ed.nss";

	if($RECRIB_PLAY==1){//回想モード中
		$GameName = "";
		$GameCircle=false;
	}
	#RECLIB03=1;//回想用フラグ取得

}


scene dm1552h.nss
{

	//■シーンの頭に必ず記述
	$スクリプトバージョン = " $Revision:  $";
	$構成名 = ModuleFileName();
	$構文名 = $SYSTEM_present_process;
	SystemInit();


//―――――――――――――――――――――――――――――――――――――――

	SoundPlay("@dm013",0,450,true);

	PrintBG("上背景", 30000);

	OnBG(10,"bg104031_5_蒼葉宅自室");
	FadeBG(0,true);

	FadeDelete("上背景", 0, null, true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0450]
Koujaku hurriedly forces words out&, and pushes my knees 
wide apart&.

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	CreateSE("SE01","se物体_ベッド_倒れ込む");
	MusicStart("SE01",0,700,0,800,null,false);

	CreateTextureEX("絵背景100", 100, -90, -556, "cg/bg/l/bg104031_5_蒼葉宅自室_l.jpg");
	Move("絵背景100", 500, -90, -572, Dxl1, false);
	Fade("絵背景100", 500, 1000, null, true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0451]
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm15/5001530a01">
"Uwah&.&.&.!"

I try to close my legs up in a panic out of embarrassment 
from such an exposing position&, but he's holding me down 
firmly&.

//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm15/5001540a01">
"Koujaku&.&.&.!"

//【紅雀】
<voice name="紅雀" class="紅雀" src="voice/dm15/5001550a02">
"Sorry&.&.&."

Koujaku mutters in a desperate voice&. As if to make sure 
it's okay&, he puts his fingers inside me again&.

And then&.&.&. I feel something both hard and hot&.

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
	TextBoxDelete(0);

	CreateSE("SE01","se人体_動作_衣擦れ02");
	MusicStart("SE01",0,600,0,1000,null,false);

	CreateTextureEX("絵ＥＶ100", 100, 0, -574, "cg/ev/l/ev155紅雀ＥＤラブＨ挿入_l.jpg");
	Move("絵ＥＶ100", 1000, 0, -499, Dxl3, false);
	Fade("絵ＥＶ100", 1000, 1000, Dxl3, true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0460]
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm15/5001560a01">
"Ah&, ah&.&.&.! Uwaaah&.&.&.!!"

It forcefully and slowly goes in&, stretching out the 
entrance&.

Koujaku's&.&.&. putting it in&.

I expected this to happen&, but the tearing pain that makes it hard to breathe isn't even comparable to what his 
fingers felt like&.

&.&.&.There really is no way to go back from here&.

{
	CreateSE("SE01","se人体_動作_衣擦れ05");
	MusicStart("SE01",0,700,0,1000,null,false);

	SetVolumeEX("SE*", 1500, 0, null);

	Move("絵ＥＶ100", 1000, 0, -225, Dxl1, true);
}
//【紅雀】
<voice name="紅雀" class="紅雀" src="voice/dm15/5001570a02">
"&.&.&.&.&.Are you okay?"

//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm15/5001580a01">
"Uck&.&.&."

I let out a strained groan and nod my head a few times&.
It's so tight&.

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0470]
But I didn't want to stop&.

It's confusing and painful&, but it links me and Koujaku 
together&.

I want to take in Koujaku&, I want to give back to him&.

It means we're no longer childhood friends for sure&, but 
our relationship is even deeper now&.

So that's why&.
That's why we need to do this&.

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	CreateSE("SE01","se人体_動作_衣擦れ14");
	MusicStart("SE01",0,700,0,700,null,false);

	Move("絵ＥＶ100", 1000, -153, -147, Dxl1, true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0471]
//【紅雀】
<voice name="紅雀" class="紅雀" src="voice/dm15/5001590a02">
"&.&.&.Fu&.&.&.Haah&."

Koujaku takes his time and slowly goes all the way inside&, as if he's looking after me&.

Warm breaths escape his lips&.

//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm15/5001600a01">
"Ah&, haah&.&.&.Ah!"

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	CreateSE("SE01","se人体_動作_衣擦れ14");
	MusicStart("SE01",0,700,0,1000,null,false);

	Move("絵ＥＶ100", 500, -200, -107, Dxl1, false);
	FadeDelete("絵ＥＶ100", 500, null, true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0480]
His dick grows even bigger&, and it hurts to breathe even 
more&. I let out shallow gasps&, and Koujaku strokes my hair&.

//【紅雀】
<voice name="紅雀" class="紅雀" src="voice/dm15/5001610a02">
"&.&.&.Does it hurt?"

//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm15/5001620a01">
"&.&.&.I'm fine&."

//【紅雀】
<voice name="紅雀" class="紅雀" src="voice/dm15/5001630a02">
"&.&.&.I still can't believe I'm doing something like this
 with you&."

The corners of Koujaku's mouth turn into another awfully 
happy smile&. Even more of a warm feeing pools up in my 
chest from seeing his expression&.

Koujaku's true feelings are obvious&, and it makes me happy to know how he feels&.

{
	CreateSE("SE01","se人体_動作_抱く01");
	MusicStart("SE01",0,500,0,1400,null,false);

	Wait(1000);

	CreateSE("SE02","se人体_動作_キス01");
	MusicStart("SE02",0,400,0,1400,null,false);
}
I want to tell Koujaku that&, so I lightly kiss his neck&.

//【紅雀】
<voice name="紅雀" class="紅雀" src="voice/dm15/5001640a02">
"Aoba&.&.&."

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0490]
Koujaku lovingly calls out my name and his whole face 
becomes a grin; he then presses into my hips&.

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
	TextBoxDelete(0);

	CreateSE("SE01","se人体_動作_衣擦れ02");
	MusicStart("SE01",0,500,0,800,null,false);

	CreateTextureEX("絵ＥＶ102", 102, 0, 0, "cg/ev/m/ev155紅雀ＥＤラブＨ挿入_m.jpg");
	Move("絵ＥＶ102", 1000, -47, -89, Dxl3, false);
	Fade("絵ＥＶ102", 1000, 1000, Dxl3, true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0491]
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm15/5001650a01">
"Ah&.&.&.! Guh&.&.&.! Ah!!"

He pushes in so deep&, and I let out a loud voice&.

While still moving&, some of the pain fades as Koujaku 
rubs my cock&.

//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm15/5001660a01">
"Haaah&, ku&.&.&.&.Ungh&.&.&.!"

The pleasant feelings from before mix together&.&.&. and I 
can't tell whether it feels painful&, unpleasant&, or rather 
good&.

//【紅雀】
<voice name="紅雀" class="紅雀" src="voice/dm15/5001670a02">
"Aoba&, &.&.&.&.Aoba!"

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);


	CreateSE("SE01","se人体_動作_衣擦れ24");
	MusicStart("SE01",0,700,0,1000,null,false);

	Move("絵背景100", 500, 0, -572, Dxl1, false);
	FadeDelete("絵ＥＶ102", 500, null, true);

	CreateSE("SE02","se物体_ベッド_寝返り");
	MusicStart("SE02",0,700,0,1000,null,false);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0500]
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm15/5001680a01">
"Unghaah&.&.&.Ah&, hah&.&.&.!"

Koujaku strokes my cheek when I push my face into the 
pillow&.

//【紅雀】
<voice name="紅雀" class="紅雀" src="voice/dm15/5001690a02">
"-&.&.&.Show me your face&."

//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm15/5001700a01">
"Don't wanna&.&.&.!"

//【紅雀】
<voice name="紅雀" class="紅雀" src="voice/dm15/5001710a02">
"No&, show me&."

He orders me in a sweet voice dripping with lust&.

//【紅雀】
<voice name="紅雀" class="紅雀" src="voice/dm15/5001720a02">
"Show me everything&. Show me the face you make when you
 feel it&, everything&.&.&. Show me&."

//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm15/5001730a01">
"&.&.&.!"

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0510]
I can't say no to that voice&.&.&.

{
	CreateSE("SE01","se人体_動作_衣擦れ05");
	MusicStart("SE01",0,700,0,1000,null,false);
	SetVolumeEX("SE*", 1000, 0, null);
}
I abandon my shyness&, and turn my head only a little 
towards Koujaku's way&.

Koujaku makes a face that says he's happy once again&, and 
his glossy eyes meet with mine&.

//{	Fw("fw紅雀_通常裸_smile");}
//【紅雀】
<voice name="紅雀" class="紅雀" src="voice/dm15/5001740a02">
"&.&.&.You're cute&."

//{	Fw("fw蒼葉_通常_shy2");}
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm15/5001750a01">
"Stu&.&.&."

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	CreateSE("SE02","se人体_動作_衣擦れ24");
	MusicStart("SE02",0,700,0,1000,null,false);

	CreateSE("SE03","se擬音_水_はねる06");
	MusicStart("SE03",0,700,0,1400,null,false);

	CreateTextureEX("絵ＥＶ107", 107, Center, Middle, "cg/ev/ev155紅雀ＥＤラブＨ挿入a.jpg");
	CreateTextureEX("絵ＥＶ106", 106, 0, -266, "cg/ev/l/ev155紅雀ＥＤラブＨ挿入a_l.jpg");
	CreateTextureEX("絵ＥＶ105", 105, 0, -266, "cg/ev/l/ev155紅雀ＥＤラブＨ挿入_l.jpg");
	Fade("絵ＥＶ105", 500, 1000, null, true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0520]
I want to answer back&, but Koujaku begins to push in 
faster and harder as if to stop me; my words scatter 
into the air&.

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	CreateSE("SE01","se人体_動作_衣擦れ24");
	MusicStart("SE01",0,700,0,800,null,false);

	CreateSE("SE02","se擬音_水_はねる06");
	MusicStart("SE02",0,600,0,1000,null,false);

	SetVolumeEX("SE*", 1500, 0, null);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0521]
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm15/5001760a01">
"Fu&, kuh&.&.&.Ah&, aahaaa&.&.&.!!"

//【紅雀】
<voice name="紅雀" class="紅雀" src="voice/dm15/5001770a02">
"Hah&.&.&.&.&."

Koujaku works his hand harder and harder on my cock&, and 
wet sounds echo throughout the room&.

While still pounding into me&, the pain gradually becomes 
next to nothing&.

Now it just feels&.&.&. amazingly good&.

//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm15/5001780a01">
"Ughaaah&.&.&.&.Ah&, fwah&.&.&.!"

{
	CreateSE("SE01","se人体_動作_衣擦れ14");
	MusicStart("SE01",0,700,0,1000,null,false);
}
//【紅雀】
<voice name="紅雀" class="紅雀" src="voice/dm15/5001790a02">
"Gh-&.&.&."

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
	TextBoxDelete(0);

	Move("絵ＥＶ105", 1000, 0, -357, Dxl3, false);
	Move("絵ＥＶ106", 1000, 0, -357, Dxl3, false);
	Fade("絵ＥＶ106", 1000, 1000, Dxl1, true);
	Delete("絵ＥＶ105");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0522]
I find it hard to breathe&, and suddenly I feel something 
warm plop onto my chest&.

At the same time&, Koujaku suddenly stops moving&.

//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm15/5001800a01">
"&.&.&.?"

The pleasure cuts off and I close my eyes; Koujaku raises 
his hand to his face&.

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
	TextBoxDelete(0);

//	SetVolumeEX("@dm*", 3000, 0, null);
	SetVolumeEX("@dm013", 1000, 10, null);

	Move("絵ＥＶ106", 1000, -200, -144, Dxl3, false);
	Fade("絵ＥＶ107", 1000, 1000, Dxl1, true);
	Delete("絵ＥＶ106");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0530]
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm15/5001810a01">
"&.&.&.What's wrong?"

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0540]
I move my unfocused vision to my abdomen&.&.&. and what I see surprises me&.

Droplets of red liquid are falling on me&.
Is that&.&.&. blood?

//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm15/5001820a01">
"&.&.&.Heh&.&.&. No way&.&.&. A nose bleed?"

//【紅雀】
<voice name="紅雀" class="紅雀" src="voice/dm15/5001830a02">
"&.&.&.&.&."

Koujaku just lowers his eyes&.

I start to understand what's going on&.
But why is Koujaku having a nose bleed&.&.&.?

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	CreateSE("SE01","se人体_動作_衣擦れ05");
	MusicStart("SE01",0,600,0,1000,null,false);

	SetVolumeEX("SE*", 2000, 0, null);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0550]
//【紅雀】
<voice name="紅雀" class="紅雀" src="voice/dm15/5001840a02">
"Shit&, how lame&.&.&. The blood rushed too fast to my head&.&.&.
 This is your fault&, you know&."

//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm15/5001850a01">
"Eh&.&.&. Why?"

Koujaku gives me a glare&.
His face looks as red as the blood dripping from his nose&.

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
	TextBoxDelete(0);

	SetVolumeEX("@dm013", 3000, 450, null);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0551]
//【紅雀】
<voice name="紅雀" class="紅雀" src="voice/dm15/5001860a02">
"Don't ask that&, figure it out&. It's just that I'm
 aroused&.&.&.! Shit&, this happened once with a girl
 too&.&.&."

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0552]
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm15/5001870a01">
"&.&.&.&.&."

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	FadeDelete("絵ＥＶ107", 500, null, true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0560]
Koujaku turns away and sulks&, wiping away at his nose&.

I don't get what's happening at first&.&.&. but soon a laugh 
swells up inside of me&.

{
	Fw("fw蒼葉_通常_cheese2h");
}
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm15/5001880a01">
"&.&.&.Pfft&, pffhaha!"

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	Fw("fw紅雀_通常裸_cranky3h");
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0561]
//【紅雀】
<voice name="紅雀" class="紅雀" src="voice/dm15/5001890a02">
"&.&.&.Don't laugh&, dammit&."

{
	Fw("fw蒼葉_通常_cheese2h");
}
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm15/5001900a01">
"Sorry&, sorry&, but&.&.&."

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0562]
My spirits rise just from seeing how amusing that was&.

I feel like I'm looking at the real Koujaku&, and I know I 
love him unconditionally&.

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	SetVolumeEX("@dm*", 1000, 0, null);
	SoundPlay("@dm014",0,450,true);

	Fw("fw蒼葉_通常_normal");
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0570]
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm15/5001910a01">
"Koujaku&."

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	Fw("fw紅雀_通常裸_cranky3h");
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0571]
//【紅雀】
<voice name="紅雀" class="紅雀" src="voice/dm15/5001920a02">
"What now?"

{
	Fw("fw蒼葉_通常_smile2");
}
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm15/5001930a01">
"I love you&."

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	Fw("fw紅雀_通常裸_cry");
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0572]
//【紅雀】
<voice name="紅雀" class="紅雀" src="voice/dm15/5001940a02">
"&.&.&.&.&."

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0573]
Koujaku recoils and closes his eyes&.
At that moment&, he takes his hand away from his nose&.

&.&.&.The blood is smeared&, and it's slightly red all the way down to his mouth&.

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0580]
I realize how much I love this man&, and return a smile to  him&.

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);


	Fw("fw蒼葉_通常_happy");
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0581]
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm15/5001941a01">
"I love that part of you too&."

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	Fw("fw紅雀_通常裸_think");
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0582]
//【紅雀】
<voice name="紅雀" class="紅雀" src="voice/dm15/5001950a02">
"&.&.&.Shit&."

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	CreateSE("SE02","se人体_動作_衣擦れ02");
	MusicStart("SE02",0,500,0,1000,null,false);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0583]
Koujaku mutters a quick comment&, and suddenly begins to 
plunge deep into me again&.

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	CreateSE("SE01","se人体_動作_衣擦れ21");
	MusicStart("SE01",0,700,0,1000,null,false);

	CreateTextureEX("絵ＥＶ112", 112, Center, Middle, "cg/ev/ev155紅雀ＥＤラブＨ挿入b.jpg");
	CreateTextureEX("絵ＥＶ111", 111, 0, -577, "cg/ev/l/ev155紅雀ＥＤラブＨ挿入a_l.jpg");
	CreateTextureEX("絵ＥＶ110", 110, 0, -577, "cg/ev/l/ev155紅雀ＥＤラブＨ挿入b_l.jpg");
	Move("絵ＥＶ110", 700, -50, -577, Dxl1, false);
	Move("絵ＥＶ111", 700, -50, -577,  Dxl1, false);
	Fade("絵ＥＶ111", 700, 1000, Dxl1, true);

	Fade("絵ＥＶ110", 1, 1000, Dxl1, true);
	Move("絵ＥＶ110", 700, -120, -577, Dxl1, false);
	Move("絵ＥＶ111", 700, -120, -577, Dxl1, false);
	FadeDelete("絵ＥＶ111", 700, Dxl1, true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0584]
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm15/5001960a01">
"Ah&, ah&, haah&.&.&.!"

He plows inside of me without holding back&, and I can feel my mind melting away&.

Every time he thrusts&, I cry out&, and my throat dries up&.

He continues to pound into me so roughly that it almost 
hurts&, and I can feel myself getting closer to the edge&.

But the real pain already passed - all that surges 
through my body is intense pleasure&.

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
	TextBoxDelete(0);

	CreateSE("SE01","se人体_動作_衣擦れ24");
	MusicStart("SE01",0,700,0,1000,null,false);

	CreateSE("SE02","se物体_ベッド_寝返り");
	MusicStart("SE02",0,700,0,1000,null,false);

	Move("絵ＥＶ111", 500, -220, -527, Dxl1, false);
	Fade("絵ＥＶ112", 500, 1000, Dxl1, true);
	Delete("絵ＥＶ110");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0590]
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm15/5001970a01">
"Unngh&.&.&.&.Ah&, ah!"

//【紅雀】
<voice name="紅雀" class="紅雀" src="voice/dm15/5001980a02">
"&.&.&.&.&.!"

//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm15/5001990a01">
"Ah&.&.&.Ah&, Koujaku- I'm&.&.&.&.I'm gonna-!"

{
	CreateSE("SE01","se人体_動作_衣擦れ05");
	MusicStart("SE01",0,700,0,1000,null,false);
}
//【紅雀】
<voice name="紅雀" class="紅雀" src="voice/dm15/5002000a02">
"Aoba&.&.&. I love you!"

//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm15/5002010a01">
"Ah&, haa&, ahhh&.&.&.&.Nnn-!"

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0600]
Koujaku frowns and makes me jolt with his rough movements&.

I can hear the rugged squelching coming from me&, and 
intense bolts prickling all over my body&.

&.&.&.I can't go on&.

I'm at my limit&.&.&.

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
	TextBoxDelete(0);

	CreateSE("SE01","se人体_動作_衣擦れ11");
	MusicStart("SE01",0,700,0,1000,null,false);

	CreateTextureEX("絵ＥＶ122", 122, Center, Middle, "cg/ev/ev155紅雀ＥＤラブＨ挿入c.jpg");
	CreateTextureEX("絵ＥＶ121", 121, 0, -126, "cg/ev/m/ev155紅雀ＥＤラブＨ挿入c_m.jpg");
	CreateTextureEX("絵ＥＶ120", 120, 0, -187, "cg/ev/m/ev155紅雀ＥＤラブＨ挿入b_m.jpg");
	Move("絵ＥＶ120", 1000, 0, -126, Dxl3, false);
	Fade("絵ＥＶ120", 1000, 1000, Dxl3, true);
	Delete("絵ＥＶ112");


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0601]
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm15/5002020a01">
"I can't- Ah&.&.&. Kou&, jaku&, coming-! Uwah&.&.&.Ahhhh!!"

{
	CreateSE("SE01","se人体_動作_衣擦れ22");
	MusicStart("SE01",0,700,0,1000,null,false);

	Move("絵ＥＶ120", 1000, -74, -88, Dxl3, false);
	Move("絵ＥＶ121", 1000, -74, -88, Dxl3, false);
	Fade("絵ＥＶ121", 1000, 1000, Dxl1, true);
	Delete("絵ＥＶ120");
}
My body twitches and I grab onto Koujaku while panting 
wildly&.

{
	CreateSE("SE01","se人体_動作_衣擦れ24");
	MusicStart("SE01",0,700,0,1000,null,false);

	Move("絵ＥＶ121", 500, -104, -58, Dxl1, false);
	Fade("絵ＥＶ122", 500, 1000, null, true);
	Delete("絵ＥＶ121");
}
//【紅雀】
<voice name="紅雀" class="紅雀" src="voice/dm15/5002030a02">
"&.&.&.Kuh&.&.&.&.&.&."

Once I reach out to him&, Koujaku holds onto my hips and 
grinds his teeth&.

//【紅雀】 
<voice name="紅雀" class="紅雀" src="voice/dm15/5002050a02">
"Fu&.&.&.&.&."

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	CreateSE("SE01","se人体_動作_衣擦れ18");
	MusicStart("SE01",0,700,0,1000,null,false);

	CreateSE("SE02","se人体_動作_衣擦れ11");
	MusicStart("SE02",0,700,0,800,null,false);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0610]
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm15/5002040a01">
"&.&.&.Ah&.&.&.Haah&, ha&.&.&."

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	CreateSE("SE01","se人体_動作_衣擦れ15");
	MusicStart("SE01",0,700,0,1000,null,false);

	CreateSE("SE02","se人体_動作_衣擦れ17");
	MusicStart("SE02",0,600,0,1000,null,false);

	FadeDelete("絵ＥＶ122", 250, null, true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0611]
Koujaku shivers&, his cock still energetic inside of me&, andhangs over me&.

His weight on me feels comfortable&, and my chest heaves up and down while I try to catch my breath&.

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	CreateSE("SE01","se人体_動作_衣擦れ14");
	MusicStart("SE01",0,700,0,800,null,false);

	CreateSE("SE02","se物体_ベッド_寝る01");
	MusicStart("SE02",0,700,0,1000,null,false);

	FadeDelete("絵背景100", 1000, null, true);

//	Fw("fw紅雀_通常裸_cry");
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0612]
//【紅雀】
<voice name="紅雀" class="紅雀" src="voice/dm15/5002060a02">
"&.&.&.Aoba&, are you all right?"

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0613]
Koujaku raises his upper body a little bit and looks into 
my eyes&.

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

//	Fw("fw蒼葉_通常_shy2");
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0614]
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm15/5002070a01">
"&.&.&.Yeah&. And you? Has your nosebleed stopped yet?"

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

//	Fw("fw紅雀_通常裸_cranky3");
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0620]
//【紅雀】
<voice name="紅雀" class="紅雀" src="voice/dm15/5002080a02">
"&.&.&.You little&."

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0621]
Koujaku puffs up to my specially chosen words&.

{
	CreateSE("SE01","se人体_動作_衣擦れ05");
	MusicStart("SE01",0,500,0,1400,null,false);

	SetVolumeEX("SE*", 1500, 0, null);
}
There's traces of blood from his nosebleed all over his 
face&, and I playfully touch at it with my fingers&.

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

//	Fw("fw蒼葉_通常_cheese2h");
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0622]
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm15/5002090a01">
"&.&.&.Hehe&."

//{	Fw("fw紅雀_通常裸_cranky2");}
//【紅雀】
<voice name="紅雀" class="紅雀" src="voice/dm15/5002100a02">
"Stop that&."

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	DeleteFw();

	CreateSE("SE01","se物体_ベッド_倒れ込む");
	MusicStart("SE01",0,700,0,1000,null,false);

	CreateSE("SE02","se人体_動作_衣擦れ15");
	MusicStart("SE02",0,700,0,1000,null,false);

	CreatePlainSP("絵板写", 990);
	Shake("絵板写", 200, 0, 3, 0, 0, 500, null, true);
	Delete("絵板写");

//	Fw("fw蒼葉_通常_normal");
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0623]
Koujaku takes my hand&, roughly kisses me&, and then lays 
down on the bed next to me&.

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

//	Fw("fw紅雀_通常裸_normal");
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0624]
//【紅雀】
<voice name="紅雀" class="紅雀" src="voice/dm15/5002110a02">
"&.&.&.It really is like a dream&."

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	CreateSE("SE01","se人体_動作_抱く01");
	MusicStart("SE01",0,700,0,1000,null,false);

	CreateSE("SE02","se物体_ベッド_寝る01");
	MusicStart("SE02",0,500,0,800,null,false);

	CreateTextureEX("絵背景100", 100, -90, -572, "cg/bg/l/bg104031_5_蒼葉宅自室_l.jpg");
	Move("絵背景100", 1000, 0, -572, Dxl3, false);
	Fade("絵背景100", 1000, 1000, null, false);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0630]
He softly murmurs&, and Koujaku then embraces me from my 
front and starts to stroke my hair again&.

Koujaku must be being careful with it&, because his touch 
felt more calming than painful&.

I start to feel a strange heaviness come on&, and slowly 
start to fall asleep&.

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

//	Fw("fw紅雀_通常裸_cry2");
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0631]
//【紅雀】
<voice name="紅雀" class="紅雀" src="voice/dm15/5002120a02">
"&.&.&.Hey&, Aoba&."

//{	Fw("fw蒼葉_通常_shock4");}
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm15/5002130a01">
"Hm?"

//{	Fw("fw紅雀_通常裸_cry");}
//【紅雀】
<voice name="紅雀" class="紅雀" src="voice/dm15/5002140a02">
"I have a favor to ask of you&. Hell&, more of a life-long
 dream I have&."

//{	Fw("fw蒼葉_通常_shock4");}
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm15/5002150a01">
"Go ahead&."

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0640]
Koujaku stops stroking my hair&, and pinches some of it 
between his fingers instead&.

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

//	Fw("fw紅雀_通常裸_cool2");
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0641]
//【紅雀】
<voice name="紅雀" class="紅雀" src="voice/dm15/5002160a02">
"I want you to let me cut your hair&."

//{	Fw("fw蒼葉_通常_shock3");}
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm15/5002170a01">
"&.&.&.My hair?"

//{	Fw("fw紅雀_通常裸_think2");}
//【紅雀】
<voice name="紅雀" class="紅雀" src="voice/dm15/5002180a02">
"Yeah&. I know that you hate when people touch your hair&."

//{	Fw("fw紅雀_通常裸_cool2");}
//【紅雀】
<voice name="紅雀" class="紅雀" src="voice/dm15/5002190a02">
"But I said to myself&.&.&. that I'd get you to say it's okay
 one day and I'd cut it&."

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0642]
It is true that I've never had someone else cut my hair 
before&. I'd always do it myself&.

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0650]
But&, if it's Koujaku&.&.&.

I can't refuse if he says it's been his life-long dream&.

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

//	Fw("fw蒼葉_通常_happy");
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0651]
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm15/5002200a01">
"&.&.&.Sure&."

//{	Fw("fw紅雀_通常裸_cry");}
//【紅雀】
<voice name="紅雀" class="紅雀" src="voice/dm15/5002210a02">
"Really?"

//{	Fw("fw蒼葉_通常_smile2");}
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm15/5002220a01">
"Yeah&."

//{	Fw("fw紅雀_通常裸_cry");}
//【紅雀】
<voice name="紅雀" class="紅雀" src="voice/dm15/5002230a02">
"&.&.&.Seriously?"

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

//	Fw("fw蒼葉_通常_cheese2");
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0660]
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm15/5002240a01">
"Seriously&."

//{	Fw("fw紅雀_通常裸_happy");}
//【紅雀】
<voice name="紅雀" class="紅雀" src="voice/dm15/5002250a02">
"Okay&.&.&. okay&, Aoba&."

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	DeleteFw();

	CreateSE("SE01","se人体_動作_抱く01");
	MusicStart("SE01",0,700,0,800,null,false);

	CreateSE("SE02","se物体_ベッド_倒れ込む");
	MusicStart("SE02",0,500,0,800,null,false);

	CreateSE("SE03","se人体_動作_衣擦れ15");
	MusicStart("SE03",0,500,0,1000,null,false);

	CreatePlainSP("絵板写", 990);
	Shake("絵板写", 150, 0, 5, 0, 0, 500, null, true);
	Delete("絵板写");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0661]
Koujaku's voice turns excited&, and he happily grabs me in 
a firm hug&.

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

//	Fw("fw蒼葉_通常_normal");
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0662]
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm15/5002260a01">
"That tickles!"

//【紅雀】
<voice name="紅雀" class="紅雀" src="voice/dm15/5002270a02">
"Thank you&."

//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm15/5002280a01">
"It's no big deal&."

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

//	Fw("fw紅雀_通常裸_smile");
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0670]
//【紅雀】
<voice name="紅雀" class="紅雀" src="voice/dm15/5002290a02">
"Yes it is&. You're granting my dreams&, you know? I honestly gave up before&. So that's why&, really&.&.&. thank you&."

//{	Fw("fw蒼葉_通常_cheese2h");}
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm15/5002300a01">
"&.&.&.Sure&."

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0671]
He looks so overjoyed that I feel happy myself&.

{
	CreateSE("SE01","se人体_動作_衣擦れ14");
	MusicStart("SE01",0,500,0,1000,null,false);
}
I feel so satisfied that I nudge my head into Koujaku's 
neck and close my eyes&.

Koujaku takes my hands and entwines our fingers firmly 
together&.

I respond by gripping his hand back tightly&.



</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
	TextBoxDelete(0);

	SetVolumeEX("@dm*", 3000, 0, null);

	if($RECRIB_PLAY==1){//回想時
		ClearFadeAll(1000, true);Wait(2000);
	}else{
	ClearFadeAll(3000, true);

	Wait(4000);
	}

//※次ファイル["dm1560ed.nss"]

}
