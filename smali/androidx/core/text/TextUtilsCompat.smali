.class public final Landroidx/core/text/TextUtilsCompat;
.super Ljava/lang/Object;
.source "TextUtilsCompat.java"


# static fields
.field private static final ARAB_SCRIPT_SUBTAG:Ljava/lang/String; = "Arab"

.field private static final HEBR_SCRIPT_SUBTAG:Ljava/lang/String; = "Hebr"

.field private static final ROOT:Ljava/util/Locale;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    .line 33
    new-instance v0, Ljava/util/Locale;

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    const-string/jumbo v2, ""

    const-string/jumbo v3, ""

    invoke-direct {v1, v2, v3}, Ljava/util/Locale;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Landroidx/core/text/TextUtilsCompat;->ROOT:Ljava/util/Locale;

    return-void
.end method

.method private constructor <init>()V
    .locals 2

    .prologue
    .line 130
    move-object v0, p0

    .local v0, "this":Landroidx/core/text/TextUtilsCompat;
    move-object v1, v0

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static getLayoutDirectionFromFirstChar(Ljava/util/Locale;)I
    .locals 3
    .param p0    # Ljava/util/Locale;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 119
    move-object v0, p0

    .local v0, "locale":Ljava/util/Locale;
    move-object v1, v0

    move-object v2, v0

    invoke-virtual {v1, v2}, Ljava/util/Locale;->getDisplayName(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-static {v1}, Ljava/lang/Character;->getDirectionality(C)B

    move-result v1

    packed-switch v1, :pswitch_data_0

    .line 126
    const/4 v1, 0x0

    move v0, v1

    .end local v0    # "locale":Ljava/util/Locale;
    :goto_0
    return v0

    .line 122
    .restart local v0    # "locale":Ljava/util/Locale;
    :pswitch_0
    const/4 v1, 0x1

    move v0, v1

    goto :goto_0

    .line 119
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public static getLayoutDirectionFromLocale(Ljava/util/Locale;)I
    .locals 4
    .param p0    # Ljava/util/Locale;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 90
    move-object v0, p0

    .local v0, "locale":Ljava/util/Locale;
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x11

    if-lt v2, v3, :cond_0

    .line 91
    move-object v2, v0

    invoke-static {v2}, Landroid/text/TextUtils;->getLayoutDirectionFromLocale(Ljava/util/Locale;)I

    move-result v2

    move v0, v2

    .line 104
    .end local v0    # "locale":Ljava/util/Locale;
    .local v1, "scriptSubtag":Ljava/lang/String;
    :goto_0
    return v0

    .line 93
    .end local v1    # "scriptSubtag":Ljava/lang/String;
    .restart local v0    # "locale":Ljava/util/Locale;
    :cond_0
    move-object v2, v0

    if-eqz v2, :cond_3

    move-object v2, v0

    sget-object v3, Landroidx/core/text/TextUtilsCompat;->ROOT:Ljava/util/Locale;

    invoke-virtual {v2, v3}, Ljava/util/Locale;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3

    .line 94
    move-object v2, v0

    invoke-static {v2}, Landroidx/core/text/ICUCompat;->maximizeAndGetScript(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v2

    move-object v1, v2

    .line 95
    .restart local v1    # "scriptSubtag":Ljava/lang/String;
    move-object v2, v1

    if-nez v2, :cond_1

    move-object v2, v0

    invoke-static {v2}, Landroidx/core/text/TextUtilsCompat;->getLayoutDirectionFromFirstChar(Ljava/util/Locale;)I

    move-result v2

    move v0, v2

    goto :goto_0

    .line 99
    :cond_1
    move-object v2, v1

    const-string/jumbo v3, "Arab"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_2

    move-object v2, v1

    const-string/jumbo v3, "Hebr"

    .line 100
    invoke-virtual {v2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 101
    :cond_2
    const/4 v2, 0x1

    move v0, v2

    goto :goto_0

    .line 104
    .end local v1    # "scriptSubtag":Ljava/lang/String;
    :cond_3
    const/4 v2, 0x0

    move v0, v2

    goto :goto_0
.end method

.method public static htmlEncode(Ljava/lang/String;)Ljava/lang/String;
    .locals 7
    .param p0    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .prologue
    .line 45
    move-object v0, p0

    .local v0, "s":Ljava/lang/String;
    sget v4, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v5, 0x11

    if-lt v4, v5, :cond_0

    .line 46
    move-object v4, v0

    invoke-static {v4}, Landroid/text/TextUtils;->htmlEncode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    move-object v0, v4

    .line 77
    .end local v0    # "s":Ljava/lang/String;
    .local v1, "sb":Ljava/lang/StringBuilder;
    .local v3, "i":I
    :goto_0
    return-object v0

    .line 48
    .end local v1    # "sb":Ljava/lang/StringBuilder;
    .end local v3    # "i":I
    .restart local v0    # "s":Ljava/lang/String;
    :cond_0
    new-instance v4, Ljava/lang/StringBuilder;

    move-object v6, v4

    move-object v4, v6

    move-object v5, v6

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    move-object v1, v4

    .line 50
    .restart local v1    # "sb":Ljava/lang/StringBuilder;
    const/4 v4, 0x0

    move v3, v4

    .restart local v3    # "i":I
    :goto_1
    move v4, v3

    move-object v5, v0

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    if-ge v4, v5, :cond_1

    .line 51
    move-object v4, v0

    move v5, v3

    invoke-virtual {v4, v5}, Ljava/lang/String;->charAt(I)C

    move-result v4

    move v2, v4

    .line 52
    .local v2, "c":C
    move v4, v2

    sparse-switch v4, :sswitch_data_0

    .line 74
    move-object v4, v1

    move v5, v2

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 50
    :goto_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 54
    :sswitch_0
    move-object v4, v1

    const-string/jumbo v5, "&lt;"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 55
    goto :goto_2

    .line 57
    :sswitch_1
    move-object v4, v1

    const-string/jumbo v5, "&gt;"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 58
    goto :goto_2

    .line 60
    :sswitch_2
    move-object v4, v1

    const-string/jumbo v5, "&amp;"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 61
    goto :goto_2

    .line 68
    :sswitch_3
    move-object v4, v1

    const-string/jumbo v5, "&#39;"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 69
    goto :goto_2

    .line 71
    :sswitch_4
    move-object v4, v1

    const-string/jumbo v5, "&quot;"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 72
    goto :goto_2

    .line 77
    .end local v2    # "c":C
    :cond_1
    move-object v4, v1

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    move-object v0, v4

    goto :goto_0

    .line 52
    nop

    :sswitch_data_0
    .sparse-switch
        0x22 -> :sswitch_4
        0x26 -> :sswitch_2
        0x27 -> :sswitch_3
        0x3c -> :sswitch_0
        0x3e -> :sswitch_1
    .end sparse-switch
.end method
