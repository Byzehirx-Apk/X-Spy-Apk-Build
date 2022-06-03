.class public final Landroidx/core/text/util/LinkifyCompat;
.super Ljava/lang/Object;
.source "LinkifyCompat.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/core/text/util/LinkifyCompat$LinkSpec;,
        Landroidx/core/text/util/LinkifyCompat$LinkifyMask;
    }
.end annotation


# static fields
.field private static final COMPARATOR:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator",
            "<",
            "Landroidx/core/text/util/LinkifyCompat$LinkSpec;",
            ">;"
        }
    .end annotation
.end field

.field private static final EMPTY_STRING:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 57
    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/String;

    sput-object v0, Landroidx/core/text/util/LinkifyCompat;->EMPTY_STRING:[Ljava/lang/String;

    .line 59
    new-instance v0, Landroidx/core/text/util/LinkifyCompat$1;

    move-object v2, v0

    move-object v0, v2

    move-object v1, v2

    invoke-direct {v1}, Landroidx/core/text/util/LinkifyCompat$1;-><init>()V

    sput-object v0, Landroidx/core/text/util/LinkifyCompat;->COMPARATOR:Ljava/util/Comparator;

    return-void
.end method

.method private constructor <init>()V
    .locals 2

    .prologue
    .line 542
    move-object v0, p0

    .local v0, "this":Landroidx/core/text/util/LinkifyCompat;
    move-object v1, v0

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static addLinkMovementMethod(Landroid/widget/TextView;)V
    .locals 4
    .param p0    # Landroid/widget/TextView;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 380
    move-object v0, p0

    .local v0, "t":Landroid/widget/TextView;
    move-object v2, v0

    invoke-virtual {v2}, Landroid/widget/TextView;->getMovementMethod()Landroid/text/method/MovementMethod;

    move-result-object v2

    move-object v1, v2

    .line 382
    .local v1, "m":Landroid/text/method/MovementMethod;
    move-object v2, v1

    if-eqz v2, :cond_0

    move-object v2, v1

    instance-of v2, v2, Landroid/text/method/LinkMovementMethod;

    if-nez v2, :cond_1

    .line 383
    :cond_0
    move-object v2, v0

    invoke-virtual {v2}, Landroid/widget/TextView;->getLinksClickable()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 384
    move-object v2, v0

    invoke-static {}, Landroid/text/method/LinkMovementMethod;->getInstance()Landroid/text/method/MovementMethod;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setMovementMethod(Landroid/text/method/MovementMethod;)V

    .line 387
    :cond_1
    return-void
.end method

.method public static addLinks(Landroid/widget/TextView;Ljava/util/regex/Pattern;Ljava/lang/String;)V
    .locals 9
    .param p0    # Landroid/widget/TextView;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p1    # Ljava/util/regex/Pattern;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 207
    move-object v0, p0

    .local v0, "text":Landroid/widget/TextView;
    move-object v1, p1

    .local v1, "pattern":Ljava/util/regex/Pattern;
    move-object v2, p2

    .local v2, "scheme":Ljava/lang/String;
    invoke-static {}, Landroidx/core/text/util/LinkifyCompat;->shouldAddLinksFallbackToFramework()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 208
    move-object v3, v0

    move-object v4, v1

    move-object v5, v2

    invoke-static {v3, v4, v5}, Landroid/text/util/Linkify;->addLinks(Landroid/widget/TextView;Ljava/util/regex/Pattern;Ljava/lang/String;)V

    .line 209
    .line 212
    :goto_0
    return-void

    .line 211
    :cond_0
    move-object v3, v0

    move-object v4, v1

    move-object v5, v2

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-static/range {v3 .. v8}, Landroidx/core/text/util/LinkifyCompat;->addLinks(Landroid/widget/TextView;Ljava/util/regex/Pattern;Ljava/lang/String;[Ljava/lang/String;Landroid/text/util/Linkify$MatchFilter;Landroid/text/util/Linkify$TransformFilter;)V

    .line 212
    goto :goto_0
.end method

.method public static addLinks(Landroid/widget/TextView;Ljava/util/regex/Pattern;Ljava/lang/String;Landroid/text/util/Linkify$MatchFilter;Landroid/text/util/Linkify$TransformFilter;)V
    .locals 11
    .param p0    # Landroid/widget/TextView;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p1    # Ljava/util/regex/Pattern;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p3    # Landroid/text/util/Linkify$MatchFilter;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p4    # Landroid/text/util/Linkify$TransformFilter;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 231
    move-object v0, p0

    .local v0, "text":Landroid/widget/TextView;
    move-object v1, p1

    .local v1, "pattern":Ljava/util/regex/Pattern;
    move-object v2, p2

    .local v2, "scheme":Ljava/lang/String;
    move-object v3, p3

    .local v3, "matchFilter":Landroid/text/util/Linkify$MatchFilter;
    move-object v4, p4

    .local v4, "transformFilter":Landroid/text/util/Linkify$TransformFilter;
    invoke-static {}, Landroidx/core/text/util/LinkifyCompat;->shouldAddLinksFallbackToFramework()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 232
    move-object v5, v0

    move-object v6, v1

    move-object v7, v2

    move-object v8, v3

    move-object v9, v4

    invoke-static {v5, v6, v7, v8, v9}, Landroid/text/util/Linkify;->addLinks(Landroid/widget/TextView;Ljava/util/regex/Pattern;Ljava/lang/String;Landroid/text/util/Linkify$MatchFilter;Landroid/text/util/Linkify$TransformFilter;)V

    .line 233
    .line 236
    :goto_0
    return-void

    .line 235
    :cond_0
    move-object v5, v0

    move-object v6, v1

    move-object v7, v2

    const/4 v8, 0x0

    move-object v9, v3

    move-object v10, v4

    invoke-static/range {v5 .. v10}, Landroidx/core/text/util/LinkifyCompat;->addLinks(Landroid/widget/TextView;Ljava/util/regex/Pattern;Ljava/lang/String;[Ljava/lang/String;Landroid/text/util/Linkify$MatchFilter;Landroid/text/util/Linkify$TransformFilter;)V

    .line 236
    goto :goto_0
.end method

.method public static addLinks(Landroid/widget/TextView;Ljava/util/regex/Pattern;Ljava/lang/String;[Ljava/lang/String;Landroid/text/util/Linkify$MatchFilter;Landroid/text/util/Linkify$TransformFilter;)V
    .locals 14
    .param p0    # Landroid/widget/TextView;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p1    # Ljava/util/regex/Pattern;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p3    # [Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p4    # Landroid/text/util/Linkify$MatchFilter;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p5    # Landroid/text/util/Linkify$TransformFilter;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi"
        }
    .end annotation

    .prologue
    .line 259
    move-object v0, p0

    .local v0, "text":Landroid/widget/TextView;
    move-object v1, p1

    .local v1, "pattern":Ljava/util/regex/Pattern;
    move-object/from16 v2, p2

    .local v2, "defaultScheme":Ljava/lang/String;
    move-object/from16 v3, p3

    .local v3, "schemes":[Ljava/lang/String;
    move-object/from16 v4, p4

    .local v4, "matchFilter":Landroid/text/util/Linkify$MatchFilter;
    move-object/from16 v5, p5

    .local v5, "transformFilter":Landroid/text/util/Linkify$TransformFilter;
    invoke-static {}, Landroidx/core/text/util/LinkifyCompat;->shouldAddLinksFallbackToFramework()Z

    move-result v8

    if-eqz v8, :cond_0

    .line 260
    move-object v8, v0

    move-object v9, v1

    move-object v10, v2

    move-object v11, v3

    move-object v12, v4

    move-object v13, v5

    invoke-static/range {v8 .. v13}, Landroid/text/util/Linkify;->addLinks(Landroid/widget/TextView;Ljava/util/regex/Pattern;Ljava/lang/String;[Ljava/lang/String;Landroid/text/util/Linkify$MatchFilter;Landroid/text/util/Linkify$TransformFilter;)V

    .line 261
    .line 271
    :goto_0
    return-void

    .line 263
    :cond_0
    move-object v8, v0

    invoke-virtual {v8}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v8

    invoke-static {v8}, Landroid/text/SpannableString;->valueOf(Ljava/lang/CharSequence;)Landroid/text/SpannableString;

    move-result-object v8

    move-object v6, v8

    .line 265
    .local v6, "spannable":Landroid/text/SpannableString;
    move-object v8, v6

    move-object v9, v1

    move-object v10, v2

    move-object v11, v3

    move-object v12, v4

    move-object v13, v5

    invoke-static/range {v8 .. v13}, Landroidx/core/text/util/LinkifyCompat;->addLinks(Landroid/text/Spannable;Ljava/util/regex/Pattern;Ljava/lang/String;[Ljava/lang/String;Landroid/text/util/Linkify$MatchFilter;Landroid/text/util/Linkify$TransformFilter;)Z

    move-result v8

    move v7, v8

    .line 267
    .local v7, "linksAdded":Z
    move v8, v7

    if-eqz v8, :cond_1

    .line 268
    move-object v8, v0

    move-object v9, v6

    invoke-virtual {v8, v9}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 269
    move-object v8, v0

    invoke-static {v8}, Landroidx/core/text/util/LinkifyCompat;->addLinkMovementMethod(Landroid/widget/TextView;)V

    .line 271
    :cond_1
    goto :goto_0
.end method

.method public static addLinks(Landroid/text/Spannable;I)Z
    .locals 14
    .param p0    # Landroid/text/Spannable;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 102
    move-object v0, p0

    .local v0, "text":Landroid/text/Spannable;
    move v1, p1

    .local v1, "mask":I
    invoke-static {}, Landroidx/core/text/util/LinkifyCompat;->shouldAddLinksFallbackToFramework()Z

    move-result v6

    if-eqz v6, :cond_0

    .line 103
    move-object v6, v0

    move v7, v1

    invoke-static {v6, v7}, Landroid/text/util/Linkify;->addLinks(Landroid/text/Spannable;I)Z

    move-result v6

    move v0, v6

    .line 149
    .end local v0    # "text":Landroid/text/Spannable;
    :goto_0
    return v0

    .line 105
    .restart local v0    # "text":Landroid/text/Spannable;
    :cond_0
    move v6, v1

    if-nez v6, :cond_1

    .line 106
    const/4 v6, 0x0

    move v0, v6

    goto :goto_0

    .line 109
    :cond_1
    move-object v6, v0

    const/4 v7, 0x0

    move-object v8, v0

    invoke-interface {v8}, Landroid/text/Spannable;->length()I

    move-result v8

    const-class v9, Landroid/text/style/URLSpan;

    invoke-interface {v6, v7, v8, v9}, Landroid/text/Spannable;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v6

    check-cast v6, [Landroid/text/style/URLSpan;

    move-object v2, v6

    .line 111
    .local v2, "old":[Landroid/text/style/URLSpan;
    move-object v6, v2

    array-length v6, v6

    const/4 v7, 0x1

    add-int/lit8 v6, v6, -0x1

    move v3, v6

    .local v3, "i":I
    :goto_1
    move v6, v3

    if-ltz v6, :cond_2

    .line 112
    move-object v6, v0

    move-object v7, v2

    move v8, v3

    aget-object v7, v7, v8

    invoke-interface {v6, v7}, Landroid/text/Spannable;->removeSpan(Ljava/lang/Object;)V

    .line 111
    add-int/lit8 v3, v3, -0x1

    goto :goto_1

    .line 115
    :cond_2
    move v6, v1

    const/4 v7, 0x4

    and-int/lit8 v6, v6, 0x4

    if-eqz v6, :cond_3

    .line 116
    move-object v6, v0

    const/4 v7, 0x4

    invoke-static {v6, v7}, Landroid/text/util/Linkify;->addLinks(Landroid/text/Spannable;I)Z

    move-result v6

    .line 119
    :cond_3
    new-instance v6, Ljava/util/ArrayList;

    move-object v13, v6

    move-object v6, v13

    move-object v7, v13

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    move-object v3, v6

    .line 121
    .local v3, "links":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroidx/core/text/util/LinkifyCompat$LinkSpec;>;"
    move v6, v1

    const/4 v7, 0x1

    and-int/lit8 v6, v6, 0x1

    if-eqz v6, :cond_4

    .line 122
    move-object v6, v3

    move-object v7, v0

    sget-object v8, Landroidx/core/util/PatternsCompat;->AUTOLINK_WEB_URL:Ljava/util/regex/Pattern;

    const/4 v9, 0x3

    new-array v9, v9, [Ljava/lang/String;

    move-object v13, v9

    move-object v9, v13

    move-object v10, v13

    const/4 v11, 0x0

    const-string/jumbo v12, "http://"

    aput-object v12, v10, v11

    move-object v13, v9

    move-object v9, v13

    move-object v10, v13

    const/4 v11, 0x1

    const-string/jumbo v12, "https://"

    aput-object v12, v10, v11

    move-object v13, v9

    move-object v9, v13

    move-object v10, v13

    const/4 v11, 0x2

    const-string/jumbo v12, "rtsp://"

    aput-object v12, v10, v11

    sget-object v10, Landroid/text/util/Linkify;->sUrlMatchFilter:Landroid/text/util/Linkify$MatchFilter;

    const/4 v11, 0x0

    invoke-static/range {v6 .. v11}, Landroidx/core/text/util/LinkifyCompat;->gatherLinks(Ljava/util/ArrayList;Landroid/text/Spannable;Ljava/util/regex/Pattern;[Ljava/lang/String;Landroid/text/util/Linkify$MatchFilter;Landroid/text/util/Linkify$TransformFilter;)V

    .line 127
    :cond_4
    move v6, v1

    const/4 v7, 0x2

    and-int/lit8 v6, v6, 0x2

    if-eqz v6, :cond_5

    .line 128
    move-object v6, v3

    move-object v7, v0

    sget-object v8, Landroidx/core/util/PatternsCompat;->AUTOLINK_EMAIL_ADDRESS:Ljava/util/regex/Pattern;

    const/4 v9, 0x1

    new-array v9, v9, [Ljava/lang/String;

    move-object v13, v9

    move-object v9, v13

    move-object v10, v13

    const/4 v11, 0x0

    const-string/jumbo v12, "mailto:"

    aput-object v12, v10, v11

    const/4 v10, 0x0

    const/4 v11, 0x0

    invoke-static/range {v6 .. v11}, Landroidx/core/text/util/LinkifyCompat;->gatherLinks(Ljava/util/ArrayList;Landroid/text/Spannable;Ljava/util/regex/Pattern;[Ljava/lang/String;Landroid/text/util/Linkify$MatchFilter;Landroid/text/util/Linkify$TransformFilter;)V

    .line 133
    :cond_5
    move v6, v1

    const/16 v7, 0x8

    and-int/lit8 v6, v6, 0x8

    if-eqz v6, :cond_6

    .line 134
    move-object v6, v3

    move-object v7, v0

    invoke-static {v6, v7}, Landroidx/core/text/util/LinkifyCompat;->gatherMapLinks(Ljava/util/ArrayList;Landroid/text/Spannable;)V

    .line 137
    :cond_6
    move-object v6, v3

    move-object v7, v0

    invoke-static {v6, v7}, Landroidx/core/text/util/LinkifyCompat;->pruneOverlaps(Ljava/util/ArrayList;Landroid/text/Spannable;)V

    .line 139
    move-object v6, v3

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-nez v6, :cond_7

    .line 140
    const/4 v6, 0x0

    move v0, v6

    goto/16 :goto_0

    .line 143
    :cond_7
    move-object v6, v3

    invoke-virtual {v6}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v6

    move-object v4, v6

    :goto_2
    move-object v6, v4

    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_9

    move-object v6, v4

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroidx/core/text/util/LinkifyCompat$LinkSpec;

    move-object v5, v6

    .line 144
    .local v5, "link":Landroidx/core/text/util/LinkifyCompat$LinkSpec;
    move-object v6, v5

    iget-object v6, v6, Landroidx/core/text/util/LinkifyCompat$LinkSpec;->frameworkAddedSpan:Landroid/text/style/URLSpan;

    if-nez v6, :cond_8

    .line 145
    move-object v6, v5

    iget-object v6, v6, Landroidx/core/text/util/LinkifyCompat$LinkSpec;->url:Ljava/lang/String;

    move-object v7, v5

    iget v7, v7, Landroidx/core/text/util/LinkifyCompat$LinkSpec;->start:I

    move-object v8, v5

    iget v8, v8, Landroidx/core/text/util/LinkifyCompat$LinkSpec;->end:I

    move-object v9, v0

    invoke-static {v6, v7, v8, v9}, Landroidx/core/text/util/LinkifyCompat;->applyLink(Ljava/lang/String;IILandroid/text/Spannable;)V

    .line 147
    :cond_8
    goto :goto_2

    .line 149
    .end local v5    # "link":Landroidx/core/text/util/LinkifyCompat$LinkSpec;
    :cond_9
    const/4 v6, 0x1

    move v0, v6

    goto/16 :goto_0
.end method

.method public static addLinks(Landroid/text/Spannable;Ljava/util/regex/Pattern;Ljava/lang/String;)Z
    .locals 9
    .param p0    # Landroid/text/Spannable;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p1    # Ljava/util/regex/Pattern;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 284
    move-object v0, p0

    .local v0, "text":Landroid/text/Spannable;
    move-object v1, p1

    .local v1, "pattern":Ljava/util/regex/Pattern;
    move-object v2, p2

    .local v2, "scheme":Ljava/lang/String;
    invoke-static {}, Landroidx/core/text/util/LinkifyCompat;->shouldAddLinksFallbackToFramework()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 285
    move-object v3, v0

    move-object v4, v1

    move-object v5, v2

    invoke-static {v3, v4, v5}, Landroid/text/util/Linkify;->addLinks(Landroid/text/Spannable;Ljava/util/regex/Pattern;Ljava/lang/String;)Z

    move-result v3

    move v0, v3

    .line 287
    .end local v0    # "text":Landroid/text/Spannable;
    :goto_0
    return v0

    .restart local v0    # "text":Landroid/text/Spannable;
    :cond_0
    move-object v3, v0

    move-object v4, v1

    move-object v5, v2

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-static/range {v3 .. v8}, Landroidx/core/text/util/LinkifyCompat;->addLinks(Landroid/text/Spannable;Ljava/util/regex/Pattern;Ljava/lang/String;[Ljava/lang/String;Landroid/text/util/Linkify$MatchFilter;Landroid/text/util/Linkify$TransformFilter;)Z

    move-result v3

    move v0, v3

    goto :goto_0
.end method

.method public static addLinks(Landroid/text/Spannable;Ljava/util/regex/Pattern;Ljava/lang/String;Landroid/text/util/Linkify$MatchFilter;Landroid/text/util/Linkify$TransformFilter;)Z
    .locals 11
    .param p0    # Landroid/text/Spannable;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p1    # Ljava/util/regex/Pattern;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p3    # Landroid/text/util/Linkify$MatchFilter;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p4    # Landroid/text/util/Linkify$TransformFilter;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 308
    move-object v0, p0

    .local v0, "spannable":Landroid/text/Spannable;
    move-object v1, p1

    .local v1, "pattern":Ljava/util/regex/Pattern;
    move-object v2, p2

    .local v2, "scheme":Ljava/lang/String;
    move-object v3, p3

    .local v3, "matchFilter":Landroid/text/util/Linkify$MatchFilter;
    move-object v4, p4

    .local v4, "transformFilter":Landroid/text/util/Linkify$TransformFilter;
    invoke-static {}, Landroidx/core/text/util/LinkifyCompat;->shouldAddLinksFallbackToFramework()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 309
    move-object v5, v0

    move-object v6, v1

    move-object v7, v2

    move-object v8, v3

    move-object v9, v4

    invoke-static {v5, v6, v7, v8, v9}, Landroid/text/util/Linkify;->addLinks(Landroid/text/Spannable;Ljava/util/regex/Pattern;Ljava/lang/String;Landroid/text/util/Linkify$MatchFilter;Landroid/text/util/Linkify$TransformFilter;)Z

    move-result v5

    move v0, v5

    .line 311
    .end local v0    # "spannable":Landroid/text/Spannable;
    :goto_0
    return v0

    .restart local v0    # "spannable":Landroid/text/Spannable;
    :cond_0
    move-object v5, v0

    move-object v6, v1

    move-object v7, v2

    const/4 v8, 0x0

    move-object v9, v3

    move-object v10, v4

    invoke-static/range {v5 .. v10}, Landroidx/core/text/util/LinkifyCompat;->addLinks(Landroid/text/Spannable;Ljava/util/regex/Pattern;Ljava/lang/String;[Ljava/lang/String;Landroid/text/util/Linkify$MatchFilter;Landroid/text/util/Linkify$TransformFilter;)Z

    move-result v5

    move v0, v5

    goto :goto_0
.end method

.method public static addLinks(Landroid/text/Spannable;Ljava/util/regex/Pattern;Ljava/lang/String;[Ljava/lang/String;Landroid/text/util/Linkify$MatchFilter;Landroid/text/util/Linkify$TransformFilter;)Z
    .locals 19
    .param p0    # Landroid/text/Spannable;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p1    # Ljava/util/regex/Pattern;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p3    # [Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p4    # Landroid/text/util/Linkify$MatchFilter;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p5    # Landroid/text/util/Linkify$TransformFilter;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi"
        }
    .end annotation

    .prologue
    .line 335
    move-object/from16 v0, p0

    .local v0, "spannable":Landroid/text/Spannable;
    move-object/from16 v1, p1

    .local v1, "pattern":Ljava/util/regex/Pattern;
    move-object/from16 v2, p2

    .local v2, "defaultScheme":Ljava/lang/String;
    move-object/from16 v3, p3

    .local v3, "schemes":[Ljava/lang/String;
    move-object/from16 v4, p4

    .local v4, "matchFilter":Landroid/text/util/Linkify$MatchFilter;
    move-object/from16 v5, p5

    .local v5, "transformFilter":Landroid/text/util/Linkify$TransformFilter;
    invoke-static {}, Landroidx/core/text/util/LinkifyCompat;->shouldAddLinksFallbackToFramework()Z

    move-result v13

    if-eqz v13, :cond_0

    .line 336
    move-object v13, v0

    move-object v14, v1

    move-object v15, v2

    move-object/from16 v16, v3

    move-object/from16 v17, v4

    move-object/from16 v18, v5

    invoke-static/range {v13 .. v18}, Landroid/text/util/Linkify;->addLinks(Landroid/text/Spannable;Ljava/util/regex/Pattern;Ljava/lang/String;[Ljava/lang/String;Landroid/text/util/Linkify$MatchFilter;Landroid/text/util/Linkify$TransformFilter;)Z

    move-result v13

    move v0, v13

    .line 372
    .end local v0    # "spannable":Landroid/text/Spannable;
    :goto_0
    return v0

    .line 340
    .restart local v0    # "spannable":Landroid/text/Spannable;
    :cond_0
    move-object v13, v2

    if-nez v13, :cond_1

    const-string/jumbo v13, ""

    move-object v2, v13

    .line 341
    :cond_1
    move-object v13, v3

    if-eqz v13, :cond_2

    move-object v13, v3

    array-length v13, v13

    const/4 v14, 0x1

    if-ge v13, v14, :cond_3

    .line 342
    :cond_2
    sget-object v13, Landroidx/core/text/util/LinkifyCompat;->EMPTY_STRING:[Ljava/lang/String;

    move-object v3, v13

    .line 345
    :cond_3
    move-object v13, v3

    array-length v13, v13

    const/4 v14, 0x1

    add-int/lit8 v13, v13, 0x1

    new-array v13, v13, [Ljava/lang/String;

    move-object v6, v13

    .line 346
    .local v6, "schemesCopy":[Ljava/lang/String;
    move-object v13, v6

    const/4 v14, 0x0

    move-object v15, v2

    sget-object v16, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    invoke-virtual/range {v15 .. v16}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v15

    aput-object v15, v13, v14

    .line 347
    const/4 v13, 0x0

    move v7, v13

    .local v7, "index":I
    :goto_1
    move v13, v7

    move-object v14, v3

    array-length v14, v14

    if-ge v13, v14, :cond_5

    .line 348
    move-object v13, v3

    move v14, v7

    aget-object v13, v13, v14

    move-object v8, v13

    .line 349
    .local v8, "scheme":Ljava/lang/String;
    move-object v13, v6

    move v14, v7

    const/4 v15, 0x1

    add-int/lit8 v14, v14, 0x1

    move-object v15, v8

    if-nez v15, :cond_4

    const-string/jumbo v15, ""

    :goto_2
    aput-object v15, v13, v14

    .line 347
    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    .line 349
    :cond_4
    move-object v15, v8

    sget-object v16, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    invoke-virtual/range {v15 .. v16}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v15

    goto :goto_2

    .line 352
    .end local v8    # "scheme":Ljava/lang/String;
    :cond_5
    const/4 v13, 0x0

    move v7, v13

    .line 353
    .local v7, "hasMatches":Z
    move-object v13, v1

    move-object v14, v0

    invoke-virtual {v13, v14}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v13

    move-object v8, v13

    .line 355
    .local v8, "m":Ljava/util/regex/Matcher;
    :goto_3
    move-object v13, v8

    invoke-virtual {v13}, Ljava/util/regex/Matcher;->find()Z

    move-result v13

    if-eqz v13, :cond_8

    .line 356
    move-object v13, v8

    invoke-virtual {v13}, Ljava/util/regex/Matcher;->start()I

    move-result v13

    move v9, v13

    .line 357
    .local v9, "start":I
    move-object v13, v8

    invoke-virtual {v13}, Ljava/util/regex/Matcher;->end()I

    move-result v13

    move v10, v13

    .line 358
    .local v10, "end":I
    const/4 v13, 0x1

    move v11, v13

    .line 360
    .local v11, "allowed":Z
    move-object v13, v4

    if-eqz v13, :cond_6

    .line 361
    move-object v13, v4

    move-object v14, v0

    move v15, v9

    move/from16 v16, v10

    invoke-interface/range {v13 .. v16}, Landroid/text/util/Linkify$MatchFilter;->acceptMatch(Ljava/lang/CharSequence;II)Z

    move-result v13

    move v11, v13

    .line 364
    :cond_6
    move v13, v11

    if-eqz v13, :cond_7

    .line 365
    move-object v13, v8

    const/4 v14, 0x0

    invoke-virtual {v13, v14}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v13

    move-object v14, v6

    move-object v15, v8

    move-object/from16 v16, v5

    invoke-static/range {v13 .. v16}, Landroidx/core/text/util/LinkifyCompat;->makeUrl(Ljava/lang/String;[Ljava/lang/String;Ljava/util/regex/Matcher;Landroid/text/util/Linkify$TransformFilter;)Ljava/lang/String;

    move-result-object v13

    move-object v12, v13

    .line 367
    .local v12, "url":Ljava/lang/String;
    move-object v13, v12

    move v14, v9

    move v15, v10

    move-object/from16 v16, v0

    invoke-static/range {v13 .. v16}, Landroidx/core/text/util/LinkifyCompat;->applyLink(Ljava/lang/String;IILandroid/text/Spannable;)V

    .line 368
    const/4 v13, 0x1

    move v7, v13

    .line 370
    .end local v12    # "url":Ljava/lang/String;
    :cond_7
    goto :goto_3

    .line 372
    .end local v9    # "start":I
    .end local v10    # "end":I
    .end local v11    # "allowed":Z
    :cond_8
    move v13, v7

    move v0, v13

    goto/16 :goto_0
.end method

.method public static addLinks(Landroid/widget/TextView;I)Z
    .locals 6
    .param p0    # Landroid/widget/TextView;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 164
    move-object v0, p0

    .local v0, "text":Landroid/widget/TextView;
    move v1, p1

    .local v1, "mask":I
    invoke-static {}, Landroidx/core/text/util/LinkifyCompat;->shouldAddLinksFallbackToFramework()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 165
    move-object v4, v0

    move v5, v1

    invoke-static {v4, v5}, Landroid/text/util/Linkify;->addLinks(Landroid/widget/TextView;I)Z

    move-result v4

    move v0, v4

    .line 190
    .end local v0    # "text":Landroid/widget/TextView;
    :goto_0
    return v0

    .line 167
    .restart local v0    # "text":Landroid/widget/TextView;
    :cond_0
    move v4, v1

    if-nez v4, :cond_1

    .line 168
    const/4 v4, 0x0

    move v0, v4

    goto :goto_0

    .line 171
    :cond_1
    move-object v4, v0

    invoke-virtual {v4}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v4

    move-object v2, v4

    .line 173
    .local v2, "t":Ljava/lang/CharSequence;
    move-object v4, v2

    instance-of v4, v4, Landroid/text/Spannable;

    if-eqz v4, :cond_3

    .line 174
    move-object v4, v2

    check-cast v4, Landroid/text/Spannable;

    move v5, v1

    invoke-static {v4, v5}, Landroidx/core/text/util/LinkifyCompat;->addLinks(Landroid/text/Spannable;I)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 175
    move-object v4, v0

    invoke-static {v4}, Landroidx/core/text/util/LinkifyCompat;->addLinkMovementMethod(Landroid/widget/TextView;)V

    .line 176
    const/4 v4, 0x1

    move v0, v4

    goto :goto_0

    .line 179
    :cond_2
    const/4 v4, 0x0

    move v0, v4

    goto :goto_0

    .line 181
    :cond_3
    move-object v4, v2

    invoke-static {v4}, Landroid/text/SpannableString;->valueOf(Ljava/lang/CharSequence;)Landroid/text/SpannableString;

    move-result-object v4

    move-object v3, v4

    .line 183
    .local v3, "s":Landroid/text/SpannableString;
    move-object v4, v3

    move v5, v1

    invoke-static {v4, v5}, Landroidx/core/text/util/LinkifyCompat;->addLinks(Landroid/text/Spannable;I)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 184
    move-object v4, v0

    invoke-static {v4}, Landroidx/core/text/util/LinkifyCompat;->addLinkMovementMethod(Landroid/widget/TextView;)V

    .line 185
    move-object v4, v0

    move-object v5, v3

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 187
    const/4 v4, 0x1

    move v0, v4

    goto :goto_0

    .line 190
    :cond_4
    const/4 v4, 0x0

    move v0, v4

    goto :goto_0
.end method

.method private static applyLink(Ljava/lang/String;IILandroid/text/Spannable;)V
    .locals 11

    .prologue
    .line 440
    move-object v0, p0

    .local v0, "url":Ljava/lang/String;
    move v1, p1

    .local v1, "start":I
    move v2, p2

    .local v2, "end":I
    move-object v3, p3

    .local v3, "text":Landroid/text/Spannable;
    new-instance v5, Landroid/text/style/URLSpan;

    move-object v10, v5

    move-object v5, v10

    move-object v6, v10

    move-object v7, v0

    invoke-direct {v6, v7}, Landroid/text/style/URLSpan;-><init>(Ljava/lang/String;)V

    move-object v4, v5

    .line 442
    .local v4, "span":Landroid/text/style/URLSpan;
    move-object v5, v3

    move-object v6, v4

    move v7, v1

    move v8, v2

    const/16 v9, 0x21

    invoke-interface {v5, v6, v7, v8, v9}, Landroid/text/Spannable;->setSpan(Ljava/lang/Object;III)V

    .line 443
    return-void
.end method

.method private static findAddress(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    .prologue
    .line 487
    move-object v0, p0

    .local v0, "addr":Ljava/lang/String;
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x1c

    if-lt v1, v2, :cond_0

    .line 488
    move-object v1, v0

    invoke-static {v1}, Landroid/webkit/WebView;->findAddress(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    move-object v0, v1

    .line 490
    .end local v0    # "addr":Ljava/lang/String;
    :goto_0
    return-object v0

    .restart local v0    # "addr":Ljava/lang/String;
    :cond_0
    move-object v1, v0

    invoke-static {v1}, Landroidx/core/text/util/FindAddress;->findAddress(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    move-object v0, v1

    goto :goto_0
.end method

.method private static gatherLinks(Ljava/util/ArrayList;Landroid/text/Spannable;Ljava/util/regex/Pattern;[Ljava/lang/String;Landroid/text/util/Linkify$MatchFilter;Landroid/text/util/Linkify$TransformFilter;)V
    .locals 16
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Landroidx/core/text/util/LinkifyCompat$LinkSpec;",
            ">;",
            "Landroid/text/Spannable;",
            "Ljava/util/regex/Pattern;",
            "[",
            "Ljava/lang/String;",
            "Landroid/text/util/Linkify$MatchFilter;",
            "Landroid/text/util/Linkify$TransformFilter;",
            ")V"
        }
    .end annotation

    .prologue
    .line 420
    move-object/from16 v0, p0

    .local v0, "links":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroidx/core/text/util/LinkifyCompat$LinkSpec;>;"
    move-object/from16 v1, p1

    .local v1, "s":Landroid/text/Spannable;
    move-object/from16 v2, p2

    .local v2, "pattern":Ljava/util/regex/Pattern;
    move-object/from16 v3, p3

    .local v3, "schemes":[Ljava/lang/String;
    move-object/from16 v4, p4

    .local v4, "matchFilter":Landroid/text/util/Linkify$MatchFilter;
    move-object/from16 v5, p5

    .local v5, "transformFilter":Landroid/text/util/Linkify$TransformFilter;
    move-object v11, v2

    move-object v12, v1

    invoke-virtual {v11, v12}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v11

    move-object v6, v11

    .line 422
    .local v6, "m":Ljava/util/regex/Matcher;
    :goto_0
    move-object v11, v6

    invoke-virtual {v11}, Ljava/util/regex/Matcher;->find()Z

    move-result v11

    if-eqz v11, :cond_2

    .line 423
    move-object v11, v6

    invoke-virtual {v11}, Ljava/util/regex/Matcher;->start()I

    move-result v11

    move v7, v11

    .line 424
    .local v7, "start":I
    move-object v11, v6

    invoke-virtual {v11}, Ljava/util/regex/Matcher;->end()I

    move-result v11

    move v8, v11

    .line 426
    .local v8, "end":I
    move-object v11, v4

    if-eqz v11, :cond_0

    move-object v11, v4

    move-object v12, v1

    move v13, v7

    move v14, v8

    invoke-interface {v11, v12, v13, v14}, Landroid/text/util/Linkify$MatchFilter;->acceptMatch(Ljava/lang/CharSequence;II)Z

    move-result v11

    if-eqz v11, :cond_1

    .line 427
    :cond_0
    new-instance v11, Landroidx/core/text/util/LinkifyCompat$LinkSpec;

    move-object v15, v11

    move-object v11, v15

    move-object v12, v15

    invoke-direct {v12}, Landroidx/core/text/util/LinkifyCompat$LinkSpec;-><init>()V

    move-object v9, v11

    .line 428
    .local v9, "spec":Landroidx/core/text/util/LinkifyCompat$LinkSpec;
    move-object v11, v6

    const/4 v12, 0x0

    invoke-virtual {v11, v12}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v11

    move-object v12, v3

    move-object v13, v6

    move-object v14, v5

    invoke-static {v11, v12, v13, v14}, Landroidx/core/text/util/LinkifyCompat;->makeUrl(Ljava/lang/String;[Ljava/lang/String;Ljava/util/regex/Matcher;Landroid/text/util/Linkify$TransformFilter;)Ljava/lang/String;

    move-result-object v11

    move-object v10, v11

    .line 430
    .local v10, "url":Ljava/lang/String;
    move-object v11, v9

    move-object v12, v10

    iput-object v12, v11, Landroidx/core/text/util/LinkifyCompat$LinkSpec;->url:Ljava/lang/String;

    .line 431
    move-object v11, v9

    move v12, v7

    iput v12, v11, Landroidx/core/text/util/LinkifyCompat$LinkSpec;->start:I

    .line 432
    move-object v11, v9

    move v12, v8

    iput v12, v11, Landroidx/core/text/util/LinkifyCompat$LinkSpec;->end:I

    .line 434
    move-object v11, v0

    move-object v12, v9

    invoke-virtual {v11, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-result v11

    .line 436
    .end local v9    # "spec":Landroidx/core/text/util/LinkifyCompat$LinkSpec;
    .end local v10    # "url":Ljava/lang/String;
    :cond_1
    goto :goto_0

    .line 437
    .end local v7    # "start":I
    .end local v8    # "end":I
    :cond_2
    return-void
.end method

.method private static gatherMapLinks(Ljava/util/ArrayList;Landroid/text/Spannable;)V
    .locals 15
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Landroidx/core/text/util/LinkifyCompat$LinkSpec;",
            ">;",
            "Landroid/text/Spannable;",
            ")V"
        }
    .end annotation

    .prologue
    .line 446
    move-object v0, p0

    .local v0, "links":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroidx/core/text/util/LinkifyCompat$LinkSpec;>;"
    move-object/from16 v1, p1

    .local v1, "s":Landroid/text/Spannable;
    move-object v11, v1

    invoke-virtual {v11}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v11

    move-object v2, v11

    .line 448
    .local v2, "string":Ljava/lang/String;
    const/4 v11, 0x0

    move v4, v11

    .line 451
    .local v4, "base":I
    :goto_0
    move-object v11, v2

    :try_start_0
    invoke-static {v11}, Landroidx/core/text/util/LinkifyCompat;->findAddress(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    move-object v14, v11

    move-object v11, v14

    move-object v12, v14

    move-object v3, v12

    .local v3, "address":Ljava/lang/String;
    if-eqz v11, :cond_0

    .line 452
    move-object v11, v2

    move-object v12, v3

    invoke-virtual {v11, v12}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v11

    move v5, v11

    .line 454
    .local v5, "start":I
    move v11, v5

    if-gez v11, :cond_1

    .line 455
    .line 483
    .line 484
    .end local v3    # "address":Ljava/lang/String;
    .end local v5    # "start":I
    :cond_0
    :goto_1
    return-void

    .line 458
    .restart local v3    # "address":Ljava/lang/String;
    .restart local v5    # "start":I
    :cond_1
    new-instance v11, Landroidx/core/text/util/LinkifyCompat$LinkSpec;

    move-object v14, v11

    move-object v11, v14

    move-object v12, v14

    invoke-direct {v12}, Landroidx/core/text/util/LinkifyCompat$LinkSpec;-><init>()V

    move-object v6, v11

    .line 459
    .local v6, "spec":Landroidx/core/text/util/LinkifyCompat$LinkSpec;
    move-object v11, v3

    invoke-virtual {v11}, Ljava/lang/String;->length()I

    move-result v11

    move v7, v11

    .line 460
    .local v7, "length":I
    move v11, v5

    move v12, v7

    add-int/2addr v11, v12

    move v8, v11

    .line 462
    .local v8, "end":I
    move-object v11, v6

    move v12, v4

    move v13, v5

    add-int/2addr v12, v13

    iput v12, v11, Landroidx/core/text/util/LinkifyCompat$LinkSpec;->start:I

    .line 463
    move-object v11, v6

    move v12, v4

    move v13, v8

    add-int/2addr v12, v13

    iput v12, v11, Landroidx/core/text/util/LinkifyCompat$LinkSpec;->end:I

    .line 464
    move-object v11, v2

    move v12, v8

    invoke-virtual {v11, v12}, Ljava/lang/String;->substring(I)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/UnsupportedOperationException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v11

    move-object v2, v11

    .line 465
    move v11, v4

    move v12, v8

    add-int/2addr v11, v12

    move v4, v11

    .line 467
    const/4 v11, 0x0

    move-object v9, v11

    .line 470
    .local v9, "encodedAddress":Ljava/lang/String;
    move-object v11, v3

    :try_start_1
    const-string/jumbo v12, "UTF-8"

    invoke-static {v11, v12}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    :try_end_1
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/UnsupportedOperationException; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v11

    move-object v9, v11

    .line 473
    .line 475
    move-object v11, v6

    :try_start_2
    new-instance v12, Ljava/lang/StringBuilder;

    move-object v14, v12

    move-object v12, v14

    move-object v13, v14

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v13, "geo:0,0?q="

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    move-object v13, v9

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    iput-object v12, v11, Landroidx/core/text/util/LinkifyCompat$LinkSpec;->url:Ljava/lang/String;

    .line 476
    move-object v11, v0

    move-object v12, v6

    invoke-virtual {v11, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_2
    .catch Ljava/lang/UnsupportedOperationException; {:try_start_2 .. :try_end_2} :catch_1

    move-result v11

    .line 477
    goto :goto_0

    .line 471
    :catch_0
    move-exception v11

    move-object v10, v11

    .line 472
    .local v10, "e":Ljava/io/UnsupportedEncodingException;
    goto :goto_0

    .line 478
    .end local v3    # "address":Ljava/lang/String;
    .end local v5    # "start":I
    .end local v6    # "spec":Landroidx/core/text/util/LinkifyCompat$LinkSpec;
    .end local v7    # "length":I
    .end local v8    # "end":I
    .end local v9    # "encodedAddress":Ljava/lang/String;
    .end local v10    # "e":Ljava/io/UnsupportedEncodingException;
    :catch_1
    move-exception v11

    move-object v5, v11

    .line 482
    .local v5, "e":Ljava/lang/UnsupportedOperationException;
    goto :goto_1
.end method

.method private static makeUrl(Ljava/lang/String;[Ljava/lang/String;Ljava/util/regex/Matcher;Landroid/text/util/Linkify$TransformFilter;)Ljava/lang/String;
    .locals 14
    .param p0    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p1    # [Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # Landroid/text/util/Linkify$TransformFilter;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 391
    move-object v0, p0

    .local v0, "url":Ljava/lang/String;
    move-object v1, p1

    .local v1, "prefixes":[Ljava/lang/String;
    move-object/from16 v2, p2

    .local v2, "matcher":Ljava/util/regex/Matcher;
    move-object/from16 v3, p3

    .local v3, "filter":Landroid/text/util/Linkify$TransformFilter;
    move-object v6, v3

    if-eqz v6, :cond_0

    .line 392
    move-object v6, v3

    move-object v7, v2

    move-object v8, v0

    invoke-interface {v6, v7, v8}, Landroid/text/util/Linkify$TransformFilter;->transformUrl(Ljava/util/regex/Matcher;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    move-object v0, v6

    .line 395
    :cond_0
    const/4 v6, 0x0

    move v4, v6

    .line 397
    .local v4, "hasPrefix":Z
    const/4 v6, 0x0

    move v5, v6

    .local v5, "i":I
    :goto_0
    move v6, v5

    move-object v7, v1

    array-length v7, v7

    if-ge v6, v7, :cond_1

    .line 398
    move-object v6, v0

    const/4 v7, 0x1

    const/4 v8, 0x0

    move-object v9, v1

    move v10, v5

    aget-object v9, v9, v10

    const/4 v10, 0x0

    move-object v11, v1

    move v12, v5

    aget-object v11, v11, v12

    invoke-virtual {v11}, Ljava/lang/String;->length()I

    move-result v11

    invoke-virtual/range {v6 .. v11}, Ljava/lang/String;->regionMatches(ZILjava/lang/String;II)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 399
    const/4 v6, 0x1

    move v4, v6

    .line 402
    move-object v6, v0

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object v9, v1

    move v10, v5

    aget-object v9, v9, v10

    const/4 v10, 0x0

    move-object v11, v1

    move v12, v5

    aget-object v11, v11, v12

    invoke-virtual {v11}, Ljava/lang/String;->length()I

    move-result v11

    invoke-virtual/range {v6 .. v11}, Ljava/lang/String;->regionMatches(ZILjava/lang/String;II)Z

    move-result v6

    if-nez v6, :cond_1

    .line 403
    new-instance v6, Ljava/lang/StringBuilder;

    move-object v13, v6

    move-object v6, v13

    move-object v7, v13

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    move-object v7, v1

    move v8, v5

    aget-object v7, v7, v8

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object v7, v0

    move-object v8, v1

    move v9, v5

    aget-object v8, v8, v9

    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    move-object v0, v6

    .line 410
    :cond_1
    move v6, v4

    if-nez v6, :cond_2

    move-object v6, v1

    array-length v6, v6

    if-lez v6, :cond_2

    .line 411
    new-instance v6, Ljava/lang/StringBuilder;

    move-object v13, v6

    move-object v6, v13

    move-object v7, v13

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    move-object v7, v1

    const/4 v8, 0x0

    aget-object v7, v7, v8

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object v7, v0

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    move-object v0, v6

    .line 414
    :cond_2
    move-object v6, v0

    move-object v0, v6

    .end local v0    # "url":Ljava/lang/String;
    return-object v0

    .line 397
    .restart local v0    # "url":Ljava/lang/String;
    :cond_3
    add-int/lit8 v5, v5, 0x1

    goto :goto_0
.end method

.method private static pruneOverlaps(Ljava/util/ArrayList;Landroid/text/Spannable;)V
    .locals 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Landroidx/core/text/util/LinkifyCompat$LinkSpec;",
            ">;",
            "Landroid/text/Spannable;",
            ")V"
        }
    .end annotation

    .prologue
    .line 495
    move-object v0, p0

    .local v0, "links":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroidx/core/text/util/LinkifyCompat$LinkSpec;>;"
    move-object v1, p1

    .local v1, "text":Landroid/text/Spannable;
    move-object v9, v1

    const/4 v10, 0x0

    move-object v11, v1

    invoke-interface {v11}, Landroid/text/Spannable;->length()I

    move-result v11

    const-class v12, Landroid/text/style/URLSpan;

    invoke-interface {v9, v10, v11, v12}, Landroid/text/Spannable;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v9

    check-cast v9, [Landroid/text/style/URLSpan;

    move-object v2, v9

    .line 496
    .local v2, "urlSpans":[Landroid/text/style/URLSpan;
    const/4 v9, 0x0

    move v3, v9

    .local v3, "i":I
    :goto_0
    move v9, v3

    move-object v10, v2

    array-length v10, v10

    if-ge v9, v10, :cond_0

    .line 497
    new-instance v9, Landroidx/core/text/util/LinkifyCompat$LinkSpec;

    move-object v13, v9

    move-object v9, v13

    move-object v10, v13

    invoke-direct {v10}, Landroidx/core/text/util/LinkifyCompat$LinkSpec;-><init>()V

    move-object v4, v9

    .line 498
    .local v4, "spec":Landroidx/core/text/util/LinkifyCompat$LinkSpec;
    move-object v9, v4

    move-object v10, v2

    move v11, v3

    aget-object v10, v10, v11

    iput-object v10, v9, Landroidx/core/text/util/LinkifyCompat$LinkSpec;->frameworkAddedSpan:Landroid/text/style/URLSpan;

    .line 499
    move-object v9, v4

    move-object v10, v1

    move-object v11, v2

    move v12, v3

    aget-object v11, v11, v12

    invoke-interface {v10, v11}, Landroid/text/Spannable;->getSpanStart(Ljava/lang/Object;)I

    move-result v10

    iput v10, v9, Landroidx/core/text/util/LinkifyCompat$LinkSpec;->start:I

    .line 500
    move-object v9, v4

    move-object v10, v1

    move-object v11, v2

    move v12, v3

    aget-object v11, v11, v12

    invoke-interface {v10, v11}, Landroid/text/Spannable;->getSpanEnd(Ljava/lang/Object;)I

    move-result v10

    iput v10, v9, Landroidx/core/text/util/LinkifyCompat$LinkSpec;->end:I

    .line 501
    move-object v9, v0

    move-object v10, v4

    invoke-virtual {v9, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-result v9

    .line 496
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 504
    .end local v4    # "spec":Landroidx/core/text/util/LinkifyCompat$LinkSpec;
    :cond_0
    move-object v9, v0

    sget-object v10, Landroidx/core/text/util/LinkifyCompat;->COMPARATOR:Ljava/util/Comparator;

    invoke-static {v9, v10}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 506
    move-object v9, v0

    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v9

    move v3, v9

    .line 507
    .local v3, "len":I
    const/4 v9, 0x0

    move v4, v9

    .line 509
    .local v4, "i":I
    :goto_1
    move v9, v4

    move v10, v3

    const/4 v11, 0x1

    add-int/lit8 v10, v10, -0x1

    if-ge v9, v10, :cond_6

    .line 510
    move-object v9, v0

    move v10, v4

    invoke-virtual {v9, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroidx/core/text/util/LinkifyCompat$LinkSpec;

    move-object v5, v9

    .line 511
    .local v5, "a":Landroidx/core/text/util/LinkifyCompat$LinkSpec;
    move-object v9, v0

    move v10, v4

    const/4 v11, 0x1

    add-int/lit8 v10, v10, 0x1

    invoke-virtual {v9, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroidx/core/text/util/LinkifyCompat$LinkSpec;

    move-object v6, v9

    .line 512
    .local v6, "b":Landroidx/core/text/util/LinkifyCompat$LinkSpec;
    const/4 v9, -0x1

    move v7, v9

    .line 514
    .local v7, "remove":I
    move-object v9, v5

    iget v9, v9, Landroidx/core/text/util/LinkifyCompat$LinkSpec;->start:I

    move-object v10, v6

    iget v10, v10, Landroidx/core/text/util/LinkifyCompat$LinkSpec;->start:I

    if-gt v9, v10, :cond_5

    move-object v9, v5

    iget v9, v9, Landroidx/core/text/util/LinkifyCompat$LinkSpec;->end:I

    move-object v10, v6

    iget v10, v10, Landroidx/core/text/util/LinkifyCompat$LinkSpec;->start:I

    if-le v9, v10, :cond_5

    .line 515
    move-object v9, v6

    iget v9, v9, Landroidx/core/text/util/LinkifyCompat$LinkSpec;->end:I

    move-object v10, v5

    iget v10, v10, Landroidx/core/text/util/LinkifyCompat$LinkSpec;->end:I

    if-gt v9, v10, :cond_3

    .line 516
    move v9, v4

    const/4 v10, 0x1

    add-int/lit8 v9, v9, 0x1

    move v7, v9

    .line 523
    :cond_1
    :goto_2
    move v9, v7

    const/4 v10, -0x1

    if-eq v9, v10, :cond_5

    .line 524
    move-object v9, v0

    move v10, v7

    invoke-virtual {v9, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroidx/core/text/util/LinkifyCompat$LinkSpec;

    iget-object v9, v9, Landroidx/core/text/util/LinkifyCompat$LinkSpec;->frameworkAddedSpan:Landroid/text/style/URLSpan;

    move-object v8, v9

    .line 525
    .local v8, "span":Landroid/text/style/URLSpan;
    move-object v9, v8

    if-eqz v9, :cond_2

    .line 526
    move-object v9, v1

    move-object v10, v8

    invoke-interface {v9, v10}, Landroid/text/Spannable;->removeSpan(Ljava/lang/Object;)V

    .line 528
    :cond_2
    move-object v9, v0

    move v10, v7

    invoke-virtual {v9, v10}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v9

    .line 529
    add-int/lit8 v3, v3, -0x1

    .line 530
    goto :goto_1

    .line 517
    .end local v8    # "span":Landroid/text/style/URLSpan;
    :cond_3
    move-object v9, v5

    iget v9, v9, Landroidx/core/text/util/LinkifyCompat$LinkSpec;->end:I

    move-object v10, v5

    iget v10, v10, Landroidx/core/text/util/LinkifyCompat$LinkSpec;->start:I

    sub-int/2addr v9, v10

    move-object v10, v6

    iget v10, v10, Landroidx/core/text/util/LinkifyCompat$LinkSpec;->end:I

    move-object v11, v6

    iget v11, v11, Landroidx/core/text/util/LinkifyCompat$LinkSpec;->start:I

    sub-int/2addr v10, v11

    if-le v9, v10, :cond_4

    .line 518
    move v9, v4

    const/4 v10, 0x1

    add-int/lit8 v9, v9, 0x1

    move v7, v9

    goto :goto_2

    .line 519
    :cond_4
    move-object v9, v5

    iget v9, v9, Landroidx/core/text/util/LinkifyCompat$LinkSpec;->end:I

    move-object v10, v5

    iget v10, v10, Landroidx/core/text/util/LinkifyCompat$LinkSpec;->start:I

    sub-int/2addr v9, v10

    move-object v10, v6

    iget v10, v10, Landroidx/core/text/util/LinkifyCompat$LinkSpec;->end:I

    move-object v11, v6

    iget v11, v11, Landroidx/core/text/util/LinkifyCompat$LinkSpec;->start:I

    sub-int/2addr v10, v11

    if-ge v9, v10, :cond_1

    .line 520
    move v9, v4

    move v7, v9

    goto :goto_2

    .line 535
    :cond_5
    add-int/lit8 v4, v4, 0x1

    .line 536
    goto/16 :goto_1

    .line 537
    .end local v5    # "a":Landroidx/core/text/util/LinkifyCompat$LinkSpec;
    .end local v6    # "b":Landroidx/core/text/util/LinkifyCompat$LinkSpec;
    .end local v7    # "remove":I
    :cond_6
    return-void
.end method

.method private static shouldAddLinksFallbackToFramework()Z
    .locals 2

    .prologue
    .line 376
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1c

    if-lt v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
