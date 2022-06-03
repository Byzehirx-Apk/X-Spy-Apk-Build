.class final Landroidx/core/os/LocaleListHelper;
.super Ljava/lang/Object;
.source "LocaleListHelper.java"


# annotations
.annotation build Landroidx/annotation/RestrictTo;
    value = {
        .enum Landroidx/annotation/RestrictTo$Scope;->LIBRARY_GROUP:Landroidx/annotation/RestrictTo$Scope;
    }
.end annotation


# static fields
.field private static final EN_LATN:Ljava/util/Locale;

.field private static final LOCALE_AR_XB:Ljava/util/Locale;

.field private static final LOCALE_EN_XA:Ljava/util/Locale;

.field private static final NUM_PSEUDO_LOCALES:I = 0x2

.field private static final STRING_AR_XB:Ljava/lang/String; = "ar-XB"

.field private static final STRING_EN_XA:Ljava/lang/String; = "en-XA"

.field private static sDefaultAdjustedLocaleList:Landroidx/core/os/LocaleListHelper;
    .annotation build Landroidx/annotation/GuardedBy;
        value = "sLock"
    .end annotation
.end field

.field private static sDefaultLocaleList:Landroidx/core/os/LocaleListHelper;
    .annotation build Landroidx/annotation/GuardedBy;
        value = "sLock"
    .end annotation
.end field

.field private static final sEmptyList:[Ljava/util/Locale;

.field private static final sEmptyLocaleList:Landroidx/core/os/LocaleListHelper;

.field private static sLastDefaultLocale:Ljava/util/Locale;
    .annotation build Landroidx/annotation/GuardedBy;
        value = "sLock"
    .end annotation
.end field

.field private static sLastExplicitlySetLocaleList:Landroidx/core/os/LocaleListHelper;
    .annotation build Landroidx/annotation/GuardedBy;
        value = "sLock"
    .end annotation
.end field

.field private static final sLock:Ljava/lang/Object;


# instance fields
.field private final mList:[Ljava/util/Locale;

.field private final mStringRepresentation:Ljava/lang/String;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    .line 50
    const/4 v0, 0x0

    new-array v0, v0, [Ljava/util/Locale;

    sput-object v0, Landroidx/core/os/LocaleListHelper;->sEmptyList:[Ljava/util/Locale;

    .line 51
    new-instance v0, Landroidx/core/os/LocaleListHelper;

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/util/Locale;

    invoke-direct {v1, v2}, Landroidx/core/os/LocaleListHelper;-><init>([Ljava/util/Locale;)V

    sput-object v0, Landroidx/core/os/LocaleListHelper;->sEmptyLocaleList:Landroidx/core/os/LocaleListHelper;

    .line 299
    new-instance v0, Ljava/util/Locale;

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    const-string/jumbo v2, "en"

    const-string/jumbo v3, "XA"

    invoke-direct {v1, v2, v3}, Ljava/util/Locale;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Landroidx/core/os/LocaleListHelper;->LOCALE_EN_XA:Ljava/util/Locale;

    .line 300
    new-instance v0, Ljava/util/Locale;

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    const-string/jumbo v2, "ar"

    const-string/jumbo v3, "XB"

    invoke-direct {v1, v2, v3}, Ljava/util/Locale;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Landroidx/core/os/LocaleListHelper;->LOCALE_AR_XB:Ljava/util/Locale;

    .line 350
    const-string/jumbo v0, "en-Latn"

    invoke-static {v0}, Landroidx/core/os/LocaleHelper;->forLanguageTag(Ljava/lang/String;)Ljava/util/Locale;

    move-result-object v0

    sput-object v0, Landroidx/core/os/LocaleListHelper;->EN_LATN:Ljava/util/Locale;

    .line 475
    new-instance v0, Ljava/lang/Object;

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    sput-object v0, Landroidx/core/os/LocaleListHelper;->sLock:Ljava/lang/Object;

    .line 478
    const/4 v0, 0x0

    sput-object v0, Landroidx/core/os/LocaleListHelper;->sLastExplicitlySetLocaleList:Landroidx/core/os/LocaleListHelper;

    .line 480
    const/4 v0, 0x0

    sput-object v0, Landroidx/core/os/LocaleListHelper;->sDefaultLocaleList:Landroidx/core/os/LocaleListHelper;

    .line 482
    const/4 v0, 0x0

    sput-object v0, Landroidx/core/os/LocaleListHelper;->sDefaultAdjustedLocaleList:Landroidx/core/os/LocaleListHelper;

    .line 484
    const/4 v0, 0x0

    sput-object v0, Landroidx/core/os/LocaleListHelper;->sLastDefaultLocale:Ljava/util/Locale;

    return-void
.end method

.method constructor <init>(Ljava/util/Locale;Landroidx/core/os/LocaleListHelper;)V
    .locals 14
    .param p1    # Ljava/util/Locale;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/RestrictTo;
        value = {
            .enum Landroidx/annotation/RestrictTo$Scope;->LIBRARY_GROUP:Landroidx/annotation/RestrictTo$Scope;
        }
    .end annotation

    .prologue
    .line 208
    move-object v0, p0

    .local v0, "this":Landroidx/core/os/LocaleListHelper;
    move-object v1, p1

    .local v1, "topLocale":Ljava/util/Locale;
    move-object/from16 v2, p2

    .local v2, "otherLocales":Landroidx/core/os/LocaleListHelper;
    move-object v9, v0

    invoke-direct {v9}, Ljava/lang/Object;-><init>()V

    .line 209
    move-object v9, v1

    if-nez v9, :cond_0

    .line 210
    new-instance v9, Ljava/lang/NullPointerException;

    move-object v13, v9

    move-object v9, v13

    move-object v10, v13

    const-string/jumbo v11, "topLocale is null"

    invoke-direct {v10, v11}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v9

    .line 213
    :cond_0
    move-object v9, v2

    if-nez v9, :cond_2

    const/4 v9, 0x0

    :goto_0
    move v3, v9

    .line 214
    .local v3, "inputLength":I
    const/4 v9, -0x1

    move v4, v9

    .line 215
    .local v4, "topLocaleIndex":I
    const/4 v9, 0x0

    move v5, v9

    .local v5, "i":I
    :goto_1
    move v9, v5

    move v10, v3

    if-ge v9, v10, :cond_1

    .line 216
    move-object v9, v1

    move-object v10, v2

    iget-object v10, v10, Landroidx/core/os/LocaleListHelper;->mList:[Ljava/util/Locale;

    move v11, v5

    aget-object v10, v10, v11

    invoke-virtual {v9, v10}, Ljava/util/Locale;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_3

    .line 217
    move v9, v5

    move v4, v9

    .line 222
    :cond_1
    move v9, v3

    move v10, v4

    const/4 v11, -0x1

    if-ne v10, v11, :cond_4

    const/4 v10, 0x1

    :goto_2
    add-int/2addr v9, v10

    move v5, v9

    .line 223
    .local v5, "outputLength":I
    move v9, v5

    new-array v9, v9, [Ljava/util/Locale;

    move-object v6, v9

    .line 224
    .local v6, "localeList":[Ljava/util/Locale;
    move-object v9, v6

    const/4 v10, 0x0

    move-object v11, v1

    invoke-virtual {v11}, Ljava/util/Locale;->clone()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/util/Locale;

    aput-object v11, v9, v10

    .line 225
    move v9, v4

    const/4 v10, -0x1

    if-ne v9, v10, :cond_7

    .line 227
    const/4 v9, 0x0

    move v7, v9

    .local v7, "i":I
    :goto_3
    move v9, v7

    move v10, v3

    if-ge v9, v10, :cond_5

    .line 228
    move-object v9, v6

    move v10, v7

    const/4 v11, 0x1

    add-int/lit8 v10, v10, 0x1

    move-object v11, v2

    iget-object v11, v11, Landroidx/core/os/LocaleListHelper;->mList:[Ljava/util/Locale;

    move v12, v7

    aget-object v11, v11, v12

    invoke-virtual {v11}, Ljava/util/Locale;->clone()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/util/Locale;

    aput-object v11, v9, v10

    .line 227
    add-int/lit8 v7, v7, 0x1

    goto :goto_3

    .line 213
    .end local v3    # "inputLength":I
    .end local v4    # "topLocaleIndex":I
    .end local v5    # "outputLength":I
    .end local v6    # "localeList":[Ljava/util/Locale;
    .end local v7    # "i":I
    :cond_2
    move-object v9, v2

    iget-object v9, v9, Landroidx/core/os/LocaleListHelper;->mList:[Ljava/util/Locale;

    array-length v9, v9

    goto :goto_0

    .line 215
    .restart local v3    # "inputLength":I
    .restart local v4    # "topLocaleIndex":I
    .local v5, "i":I
    :cond_3
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 222
    :cond_4
    const/4 v10, 0x0

    goto :goto_2

    .line 227
    .line 239
    .local v5, "outputLength":I
    .restart local v6    # "localeList":[Ljava/util/Locale;
    .restart local v7    # "i":I
    :cond_5
    new-instance v9, Ljava/lang/StringBuilder;

    move-object v13, v9

    move-object v9, v13

    move-object v10, v13

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    move-object v7, v9

    .line 240
    .local v7, "sb":Ljava/lang/StringBuilder;
    const/4 v9, 0x0

    move v8, v9

    .local v8, "i":I
    :goto_4
    move v9, v8

    move v10, v5

    if-ge v9, v10, :cond_9

    .line 241
    move-object v9, v7

    move-object v10, v6

    move v11, v8

    aget-object v10, v10, v11

    invoke-static {v10}, Landroidx/core/os/LocaleHelper;->toLanguageTag(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    .line 243
    move v9, v8

    move v10, v5

    const/4 v11, 0x1

    add-int/lit8 v10, v10, -0x1

    if-ge v9, v10, :cond_6

    .line 244
    move-object v9, v7

    const/16 v10, 0x2c

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v9

    .line 240
    :cond_6
    add-int/lit8 v8, v8, 0x1

    goto :goto_4

    .line 231
    .end local v7    # "sb":Ljava/lang/StringBuilder;
    .end local v8    # "i":I
    :cond_7
    const/4 v9, 0x0

    move v7, v9

    .local v7, "i":I
    :goto_5
    move v9, v7

    move v10, v4

    if-ge v9, v10, :cond_8

    .line 232
    move-object v9, v6

    move v10, v7

    const/4 v11, 0x1

    add-int/lit8 v10, v10, 0x1

    move-object v11, v2

    iget-object v11, v11, Landroidx/core/os/LocaleListHelper;->mList:[Ljava/util/Locale;

    move v12, v7

    aget-object v11, v11, v12

    invoke-virtual {v11}, Ljava/util/Locale;->clone()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/util/Locale;

    aput-object v11, v9, v10

    .line 231
    add-int/lit8 v7, v7, 0x1

    goto :goto_5

    .line 234
    :cond_8
    move v9, v4

    const/4 v10, 0x1

    add-int/lit8 v9, v9, 0x1

    move v7, v9

    :goto_6
    move v9, v7

    move v10, v3

    if-ge v9, v10, :cond_5

    .line 235
    move-object v9, v6

    move v10, v7

    move-object v11, v2

    iget-object v11, v11, Landroidx/core/os/LocaleListHelper;->mList:[Ljava/util/Locale;

    move v12, v7

    aget-object v11, v11, v12

    invoke-virtual {v11}, Ljava/util/Locale;->clone()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/util/Locale;

    aput-object v11, v9, v10

    .line 234
    add-int/lit8 v7, v7, 0x1

    goto :goto_6

    .line 248
    .local v7, "sb":Ljava/lang/StringBuilder;
    .restart local v8    # "i":I
    :cond_9
    move-object v9, v0

    move-object v10, v6

    iput-object v10, v9, Landroidx/core/os/LocaleListHelper;->mList:[Ljava/util/Locale;

    .line 249
    move-object v9, v0

    move-object v10, v7

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    iput-object v10, v9, Landroidx/core/os/LocaleListHelper;->mStringRepresentation:Ljava/lang/String;

    .line 250
    return-void
.end method

.method varargs constructor <init>([Ljava/util/Locale;)V
    .locals 13
    .param p1    # [Ljava/util/Locale;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/RestrictTo;
        value = {
            .enum Landroidx/annotation/RestrictTo$Scope;->LIBRARY_GROUP:Landroidx/annotation/RestrictTo$Scope;
        }
    .end annotation

    .prologue
    .line 172
    move-object v0, p0

    .local v0, "this":Landroidx/core/os/LocaleListHelper;
    move-object v1, p1

    .local v1, "list":[Ljava/util/Locale;
    move-object v8, v0

    invoke-direct {v8}, Ljava/lang/Object;-><init>()V

    .line 173
    move-object v8, v1

    array-length v8, v8

    if-nez v8, :cond_0

    .line 174
    move-object v8, v0

    sget-object v9, Landroidx/core/os/LocaleListHelper;->sEmptyList:[Ljava/util/Locale;

    iput-object v9, v8, Landroidx/core/os/LocaleListHelper;->mList:[Ljava/util/Locale;

    .line 175
    move-object v8, v0

    const-string/jumbo v9, ""

    iput-object v9, v8, Landroidx/core/os/LocaleListHelper;->mStringRepresentation:Ljava/lang/String;

    .line 199
    :goto_0
    return-void

    .line 177
    :cond_0
    move-object v8, v1

    array-length v8, v8

    new-array v8, v8, [Ljava/util/Locale;

    move-object v2, v8

    .line 178
    .local v2, "localeList":[Ljava/util/Locale;
    new-instance v8, Ljava/util/HashSet;

    move-object v12, v8

    move-object v8, v12

    move-object v9, v12

    invoke-direct {v9}, Ljava/util/HashSet;-><init>()V

    move-object v3, v8

    .line 179
    .local v3, "seenLocales":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/util/Locale;>;"
    new-instance v8, Ljava/lang/StringBuilder;

    move-object v12, v8

    move-object v8, v12

    move-object v9, v12

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    move-object v4, v8

    .line 180
    .local v4, "sb":Ljava/lang/StringBuilder;
    const/4 v8, 0x0

    move v5, v8

    .local v5, "i":I
    :goto_1
    move v8, v5

    move-object v9, v1

    array-length v9, v9

    if-ge v8, v9, :cond_4

    .line 181
    move-object v8, v1

    move v9, v5

    aget-object v8, v8, v9

    move-object v6, v8

    .line 182
    .local v6, "l":Ljava/util/Locale;
    move-object v8, v6

    if-nez v8, :cond_1

    .line 183
    new-instance v8, Ljava/lang/NullPointerException;

    move-object v12, v8

    move-object v8, v12

    move-object v9, v12

    new-instance v10, Ljava/lang/StringBuilder;

    move-object v12, v10

    move-object v10, v12

    move-object v11, v12

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "list["

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    move v11, v5

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string/jumbo v11, "] is null"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-direct {v9, v10}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v8

    .line 184
    :cond_1
    move-object v8, v3

    move-object v9, v6

    invoke-virtual {v8, v9}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_2

    .line 185
    new-instance v8, Ljava/lang/IllegalArgumentException;

    move-object v12, v8

    move-object v8, v12

    move-object v9, v12

    new-instance v10, Ljava/lang/StringBuilder;

    move-object v12, v10

    move-object v10, v12

    move-object v11, v12

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "list["

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    move v11, v5

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string/jumbo v11, "] is a repetition"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-direct {v9, v10}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v8

    .line 187
    :cond_2
    move-object v8, v6

    invoke-virtual {v8}, Ljava/util/Locale;->clone()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/Locale;

    move-object v7, v8

    .line 188
    .local v7, "localeClone":Ljava/util/Locale;
    move-object v8, v2

    move v9, v5

    move-object v10, v7

    aput-object v10, v8, v9

    .line 189
    move-object v8, v4

    move-object v9, v7

    invoke-static {v9}, Landroidx/core/os/LocaleHelper;->toLanguageTag(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    .line 190
    move v8, v5

    move-object v9, v1

    array-length v9, v9

    const/4 v10, 0x1

    add-int/lit8 v9, v9, -0x1

    if-ge v8, v9, :cond_3

    .line 191
    move-object v8, v4

    const/16 v9, 0x2c

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v8

    .line 193
    :cond_3
    move-object v8, v3

    move-object v9, v7

    invoke-virtual {v8, v9}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    move-result v8

    .line 180
    add-int/lit8 v5, v5, 0x1

    goto/16 :goto_1

    .line 196
    .end local v6    # "l":Ljava/util/Locale;
    .end local v7    # "localeClone":Ljava/util/Locale;
    :cond_4
    move-object v8, v0

    move-object v9, v2

    iput-object v9, v8, Landroidx/core/os/LocaleListHelper;->mList:[Ljava/util/Locale;

    .line 197
    move-object v8, v0

    move-object v9, v4

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    iput-object v9, v8, Landroidx/core/os/LocaleListHelper;->mStringRepresentation:Ljava/lang/String;

    goto/16 :goto_0
.end method

.method private computeFirstMatch(Ljava/util/Collection;Z)Ljava/util/Locale;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<",
            "Ljava/lang/String;",
            ">;Z)",
            "Ljava/util/Locale;"
        }
    .end annotation

    .prologue
    .line 392
    move-object v0, p0

    .local v0, "this":Landroidx/core/os/LocaleListHelper;
    move-object v1, p1

    .local v1, "supportedLocales":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/lang/String;>;"
    move v2, p2

    .local v2, "assumeEnglishIsSupported":Z
    move-object v4, v0

    move-object v5, v1

    move v6, v2

    invoke-direct {v4, v5, v6}, Landroidx/core/os/LocaleListHelper;->computeFirstMatchIndex(Ljava/util/Collection;Z)I

    move-result v4

    move v3, v4

    .line 393
    .local v3, "bestIndex":I
    move v4, v3

    const/4 v5, -0x1

    if-ne v4, v5, :cond_0

    const/4 v4, 0x0

    :goto_0
    move-object v0, v4

    .end local v0    # "this":Landroidx/core/os/LocaleListHelper;
    return-object v0

    .restart local v0    # "this":Landroidx/core/os/LocaleListHelper;
    :cond_0
    move-object v4, v0

    iget-object v4, v4, Landroidx/core/os/LocaleListHelper;->mList:[Ljava/util/Locale;

    move v5, v3

    aget-object v4, v4, v5

    goto :goto_0
.end method

.method private computeFirstMatchIndex(Ljava/util/Collection;Z)I
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<",
            "Ljava/lang/String;",
            ">;Z)I"
        }
    .end annotation

    .prologue
    .line 354
    move-object v0, p0

    .local v0, "this":Landroidx/core/os/LocaleListHelper;
    move-object v1, p1

    .local v1, "supportedLocales":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/lang/String;>;"
    move v2, p2

    .local v2, "assumeEnglishIsSupported":Z
    move-object v8, v0

    iget-object v8, v8, Landroidx/core/os/LocaleListHelper;->mList:[Ljava/util/Locale;

    array-length v8, v8

    const/4 v9, 0x1

    if-ne v8, v9, :cond_0

    .line 355
    const/4 v8, 0x0

    move v0, v8

    .line 386
    .end local v0    # "this":Landroidx/core/os/LocaleListHelper;
    :goto_0
    return v0

    .line 357
    .restart local v0    # "this":Landroidx/core/os/LocaleListHelper;
    :cond_0
    move-object v8, v0

    iget-object v8, v8, Landroidx/core/os/LocaleListHelper;->mList:[Ljava/util/Locale;

    array-length v8, v8

    if-nez v8, :cond_1

    .line 358
    const/4 v8, -0x1

    move v0, v8

    goto :goto_0

    .line 361
    :cond_1
    const v8, 0x7fffffff

    move v3, v8

    .line 363
    .local v3, "bestIndex":I
    move v8, v2

    if-eqz v8, :cond_3

    .line 364
    move-object v8, v0

    sget-object v9, Landroidx/core/os/LocaleListHelper;->EN_LATN:Ljava/util/Locale;

    invoke-direct {v8, v9}, Landroidx/core/os/LocaleListHelper;->findFirstMatchIndex(Ljava/util/Locale;)I

    move-result v8

    move v4, v8

    .line 365
    .local v4, "idx":I
    move v8, v4

    if-nez v8, :cond_2

    .line 366
    const/4 v8, 0x0

    move v0, v8

    goto :goto_0

    .line 367
    :cond_2
    move v8, v4

    move v9, v3

    if-ge v8, v9, :cond_3

    .line 368
    move v8, v4

    move v3, v8

    .line 371
    .end local v4    # "idx":I
    :cond_3
    move-object v8, v1

    invoke-interface {v8}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v8

    move-object v4, v8

    :goto_1
    move-object v8, v4

    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_6

    move-object v8, v4

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    move-object v5, v8

    .line 372
    .local v5, "languageTag":Ljava/lang/String;
    move-object v8, v5

    invoke-static {v8}, Landroidx/core/os/LocaleHelper;->forLanguageTag(Ljava/lang/String;)Ljava/util/Locale;

    move-result-object v8

    move-object v6, v8

    .line 375
    .local v6, "supportedLocale":Ljava/util/Locale;
    move-object v8, v0

    move-object v9, v6

    invoke-direct {v8, v9}, Landroidx/core/os/LocaleListHelper;->findFirstMatchIndex(Ljava/util/Locale;)I

    move-result v8

    move v7, v8

    .line 376
    .local v7, "idx":I
    move v8, v7

    if-nez v8, :cond_4

    .line 377
    const/4 v8, 0x0

    move v0, v8

    goto :goto_0

    .line 378
    :cond_4
    move v8, v7

    move v9, v3

    if-ge v8, v9, :cond_5

    .line 379
    move v8, v7

    move v3, v8

    .line 381
    :cond_5
    goto :goto_1

    .line 382
    .end local v5    # "languageTag":Ljava/lang/String;
    .end local v6    # "supportedLocale":Ljava/util/Locale;
    .end local v7    # "idx":I
    :cond_6
    move v8, v3

    const v9, 0x7fffffff

    if-ne v8, v9, :cond_7

    .line 384
    const/4 v8, 0x0

    move v0, v8

    goto :goto_0

    .line 386
    :cond_7
    move v8, v3

    move v0, v8

    goto :goto_0
.end method

.method private findFirstMatchIndex(Ljava/util/Locale;)I
    .locals 7

    .prologue
    .line 341
    move-object v0, p0

    .local v0, "this":Landroidx/core/os/LocaleListHelper;
    move-object v1, p1

    .local v1, "supportedLocale":Ljava/util/Locale;
    const/4 v4, 0x0

    move v2, v4

    .local v2, "idx":I
    :goto_0
    move v4, v2

    move-object v5, v0

    iget-object v5, v5, Landroidx/core/os/LocaleListHelper;->mList:[Ljava/util/Locale;

    array-length v5, v5

    if-ge v4, v5, :cond_1

    .line 342
    move-object v4, v1

    move-object v5, v0

    iget-object v5, v5, Landroidx/core/os/LocaleListHelper;->mList:[Ljava/util/Locale;

    move v6, v2

    aget-object v5, v5, v6

    invoke-static {v4, v5}, Landroidx/core/os/LocaleListHelper;->matchScore(Ljava/util/Locale;Ljava/util/Locale;)I

    move-result v4

    move v3, v4

    .line 343
    .local v3, "score":I
    move v4, v3

    if-lez v4, :cond_0

    .line 344
    move v4, v2

    move v0, v4

    .line 347
    .end local v0    # "this":Landroidx/core/os/LocaleListHelper;
    .end local v3    # "score":I
    :goto_1
    return v0

    .line 341
    .restart local v0    # "this":Landroidx/core/os/LocaleListHelper;
    .restart local v3    # "score":I
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 347
    .end local v3    # "score":I
    :cond_1
    const v4, 0x7fffffff

    move v0, v4

    goto :goto_1
.end method

.method static forLanguageTags(Ljava/lang/String;)Landroidx/core/os/LocaleListHelper;
    .locals 9
    .param p0    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation build Landroidx/annotation/RestrictTo;
        value = {
            .enum Landroidx/annotation/RestrictTo$Scope;->LIBRARY_GROUP:Landroidx/annotation/RestrictTo$Scope;
        }
    .end annotation

    .prologue
    .line 273
    move-object v0, p0

    .local v0, "list":Ljava/lang/String;
    move-object v4, v0

    if-eqz v4, :cond_0

    move-object v4, v0

    invoke-virtual {v4}, Ljava/lang/String;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 274
    :cond_0
    invoke-static {}, Landroidx/core/os/LocaleListHelper;->getEmptyLocaleList()Landroidx/core/os/LocaleListHelper;

    move-result-object v4

    move-object v0, v4

    .line 281
    .end local v0    # "list":Ljava/lang/String;
    .local v1, "tags":[Ljava/lang/String;
    .local v2, "localeArray":[Ljava/util/Locale;
    .local v3, "i":I
    :goto_0
    return-object v0

    .line 276
    .end local v1    # "tags":[Ljava/lang/String;
    .end local v2    # "localeArray":[Ljava/util/Locale;
    .end local v3    # "i":I
    .restart local v0    # "list":Ljava/lang/String;
    :cond_1
    move-object v4, v0

    const-string/jumbo v5, ","

    const/4 v6, -0x1

    invoke-virtual {v4, v5, v6}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v4

    move-object v1, v4

    .line 277
    .restart local v1    # "tags":[Ljava/lang/String;
    move-object v4, v1

    array-length v4, v4

    new-array v4, v4, [Ljava/util/Locale;

    move-object v2, v4

    .line 278
    .restart local v2    # "localeArray":[Ljava/util/Locale;
    const/4 v4, 0x0

    move v3, v4

    .restart local v3    # "i":I
    :goto_1
    move v4, v3

    move-object v5, v2

    array-length v5, v5

    if-ge v4, v5, :cond_2

    .line 279
    move-object v4, v2

    move v5, v3

    move-object v6, v1

    move v7, v3

    aget-object v6, v6, v7

    invoke-static {v6}, Landroidx/core/os/LocaleHelper;->forLanguageTag(Ljava/lang/String;)Ljava/util/Locale;

    move-result-object v6

    aput-object v6, v4, v5

    .line 278
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 281
    :cond_2
    new-instance v4, Landroidx/core/os/LocaleListHelper;

    move-object v8, v4

    move-object v4, v8

    move-object v5, v8

    move-object v6, v2

    invoke-direct {v5, v6}, Landroidx/core/os/LocaleListHelper;-><init>([Ljava/util/Locale;)V

    move-object v0, v4

    goto :goto_0
.end method

.method static getAdjustedDefault()Landroidx/core/os/LocaleListHelper;
    .locals 5
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation build Landroidx/annotation/Size;
        min = 0x1L
    .end annotation

    .prologue
    .line 533
    invoke-static {}, Landroidx/core/os/LocaleListHelper;->getDefault()Landroidx/core/os/LocaleListHelper;

    move-result-object v2

    .line 534
    sget-object v2, Landroidx/core/os/LocaleListHelper;->sLock:Ljava/lang/Object;

    move-object v4, v2

    move-object v2, v4

    move-object v3, v4

    move-object v0, v3

    monitor-enter v2

    .line 535
    :try_start_0
    sget-object v2, Landroidx/core/os/LocaleListHelper;->sDefaultAdjustedLocaleList:Landroidx/core/os/LocaleListHelper;

    move-object v3, v0

    monitor-exit v3

    move-object v0, v2

    return-object v0

    .line 536
    :catchall_0
    move-exception v2

    move-object v1, v2

    move-object v2, v0

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object v2, v1

    throw v2
.end method

.method static getDefault()Landroidx/core/os/LocaleListHelper;
    .locals 8
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation build Landroidx/annotation/RestrictTo;
        value = {
            .enum Landroidx/annotation/RestrictTo$Scope;->LIBRARY_GROUP:Landroidx/annotation/RestrictTo$Scope;
        }
    .end annotation

    .annotation build Landroidx/annotation/Size;
        min = 0x1L
    .end annotation

    .prologue
    .line 502
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v3

    move-object v0, v3

    .line 503
    .local v0, "defaultLocale":Ljava/util/Locale;
    sget-object v3, Landroidx/core/os/LocaleListHelper;->sLock:Ljava/lang/Object;

    move-object v7, v3

    move-object v3, v7

    move-object v4, v7

    move-object v1, v4

    monitor-enter v3

    .line 504
    move-object v3, v0

    :try_start_0
    sget-object v4, Landroidx/core/os/LocaleListHelper;->sLastDefaultLocale:Ljava/util/Locale;

    invoke-virtual {v3, v4}, Ljava/util/Locale;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 505
    move-object v3, v0

    sput-object v3, Landroidx/core/os/LocaleListHelper;->sLastDefaultLocale:Ljava/util/Locale;

    .line 509
    sget-object v3, Landroidx/core/os/LocaleListHelper;->sDefaultLocaleList:Landroidx/core/os/LocaleListHelper;

    if-eqz v3, :cond_0

    move-object v3, v0

    sget-object v4, Landroidx/core/os/LocaleListHelper;->sDefaultLocaleList:Landroidx/core/os/LocaleListHelper;

    const/4 v5, 0x0

    .line 510
    invoke-virtual {v4, v5}, Landroidx/core/os/LocaleListHelper;->get(I)Ljava/util/Locale;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/Locale;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 513
    sget-object v3, Landroidx/core/os/LocaleListHelper;->sDefaultLocaleList:Landroidx/core/os/LocaleListHelper;

    move-object v4, v1

    monitor-exit v4

    move-object v0, v3

    .line 523
    .end local v0    # "defaultLocale":Ljava/util/Locale;
    :goto_0
    return-object v0

    .line 515
    .restart local v0    # "defaultLocale":Ljava/util/Locale;
    :cond_0
    new-instance v3, Landroidx/core/os/LocaleListHelper;

    move-object v7, v3

    move-object v3, v7

    move-object v4, v7

    move-object v5, v0

    sget-object v6, Landroidx/core/os/LocaleListHelper;->sLastExplicitlySetLocaleList:Landroidx/core/os/LocaleListHelper;

    invoke-direct {v4, v5, v6}, Landroidx/core/os/LocaleListHelper;-><init>(Ljava/util/Locale;Landroidx/core/os/LocaleListHelper;)V

    sput-object v3, Landroidx/core/os/LocaleListHelper;->sDefaultLocaleList:Landroidx/core/os/LocaleListHelper;

    .line 517
    sget-object v3, Landroidx/core/os/LocaleListHelper;->sDefaultLocaleList:Landroidx/core/os/LocaleListHelper;

    sput-object v3, Landroidx/core/os/LocaleListHelper;->sDefaultAdjustedLocaleList:Landroidx/core/os/LocaleListHelper;

    .line 523
    :cond_1
    sget-object v3, Landroidx/core/os/LocaleListHelper;->sDefaultLocaleList:Landroidx/core/os/LocaleListHelper;

    move-object v4, v1

    monitor-exit v4

    move-object v0, v3

    goto :goto_0

    .line 524
    :catchall_0
    move-exception v3

    move-object v2, v3

    move-object v3, v1

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object v3, v2

    throw v3
.end method

.method static getEmptyLocaleList()Landroidx/core/os/LocaleListHelper;
    .locals 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation build Landroidx/annotation/RestrictTo;
        value = {
            .enum Landroidx/annotation/RestrictTo$Scope;->LIBRARY_GROUP:Landroidx/annotation/RestrictTo$Scope;
        }
    .end annotation

    .prologue
    .line 259
    sget-object v0, Landroidx/core/os/LocaleListHelper;->sEmptyLocaleList:Landroidx/core/os/LocaleListHelper;

    return-object v0
.end method

.method private static getLikelyScript(Ljava/util/Locale;)Ljava/lang/String;
    .locals 4

    .prologue
    .line 286
    move-object v0, p0

    .local v0, "locale":Ljava/util/Locale;
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x15

    if-lt v2, v3, :cond_1

    .line 287
    move-object v2, v0

    invoke-virtual {v2}, Ljava/util/Locale;->getScript()Ljava/lang/String;

    move-result-object v2

    move-object v1, v2

    .line 288
    .local v1, "script":Ljava/lang/String;
    move-object v2, v1

    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_0

    .line 289
    move-object v2, v1

    move-object v0, v2

    .line 294
    .end local v0    # "locale":Ljava/util/Locale;
    .end local v1    # "script":Ljava/lang/String;
    :goto_0
    return-object v0

    .line 291
    .restart local v0    # "locale":Ljava/util/Locale;
    .restart local v1    # "script":Ljava/lang/String;
    :cond_0
    const-string/jumbo v2, ""

    move-object v0, v2

    goto :goto_0

    .line 294
    .end local v1    # "script":Ljava/lang/String;
    :cond_1
    const-string/jumbo v2, ""

    move-object v0, v2

    goto :goto_0
.end method

.method private static isPseudoLocale(Ljava/lang/String;)Z
    .locals 3

    .prologue
    .line 304
    move-object v0, p0

    .local v0, "locale":Ljava/lang/String;
    const-string/jumbo v1, "en-XA"

    move-object v2, v0

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string/jumbo v1, "ar-XB"

    move-object v2, v0

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    const/4 v1, 0x1

    :goto_0
    move v0, v1

    .end local v0    # "locale":Ljava/lang/String;
    return v0

    .restart local v0    # "locale":Ljava/lang/String;
    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private static isPseudoLocale(Ljava/util/Locale;)Z
    .locals 3

    .prologue
    .line 308
    move-object v0, p0

    .local v0, "locale":Ljava/util/Locale;
    sget-object v1, Landroidx/core/os/LocaleListHelper;->LOCALE_EN_XA:Ljava/util/Locale;

    move-object v2, v0

    invoke-virtual {v1, v2}, Ljava/util/Locale;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    sget-object v1, Landroidx/core/os/LocaleListHelper;->LOCALE_AR_XB:Ljava/util/Locale;

    move-object v2, v0

    invoke-virtual {v1, v2}, Ljava/util/Locale;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    const/4 v1, 0x1

    :goto_0
    move v0, v1

    .end local v0    # "locale":Ljava/util/Locale;
    return v0

    .restart local v0    # "locale":Ljava/util/Locale;
    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method static isPseudoLocalesOnly([Ljava/lang/String;)Z
    .locals 7
    .param p0    # [Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/RestrictTo;
        value = {
            .enum Landroidx/annotation/RestrictTo$Scope;->LIBRARY_GROUP:Landroidx/annotation/RestrictTo$Scope;
        }
    .end annotation

    .prologue
    .line 455
    move-object v0, p0

    .local v0, "supportedLocales":[Ljava/lang/String;
    move-object v5, v0

    if-nez v5, :cond_0

    .line 456
    const/4 v5, 0x1

    move v0, v5

    .line 471
    .end local v0    # "supportedLocales":[Ljava/lang/String;
    .local v4, "locale":Ljava/lang/String;
    :goto_0
    return v0

    .line 459
    .end local v4    # "locale":Ljava/lang/String;
    .restart local v0    # "supportedLocales":[Ljava/lang/String;
    :cond_0
    move-object v5, v0

    array-length v5, v5

    const/4 v6, 0x3

    if-le v5, v6, :cond_1

    .line 464
    const/4 v5, 0x0

    move v0, v5

    goto :goto_0

    .line 466
    :cond_1
    move-object v5, v0

    move-object v1, v5

    move-object v5, v1

    array-length v5, v5

    move v2, v5

    const/4 v5, 0x0

    move v3, v5

    :goto_1
    move v5, v3

    move v6, v2

    if-ge v5, v6, :cond_3

    move-object v5, v1

    move v6, v3

    aget-object v5, v5, v6

    move-object v4, v5

    .line 467
    .restart local v4    # "locale":Ljava/lang/String;
    move-object v5, v4

    invoke-virtual {v5}, Ljava/lang/String;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_2

    move-object v5, v4

    invoke-static {v5}, Landroidx/core/os/LocaleListHelper;->isPseudoLocale(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_2

    .line 468
    const/4 v5, 0x0

    move v0, v5

    goto :goto_0

    .line 466
    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 471
    .end local v4    # "locale":Ljava/lang/String;
    :cond_3
    const/4 v5, 0x1

    move v0, v5

    goto :goto_0
.end method

.method private static matchScore(Ljava/util/Locale;Ljava/util/Locale;)I
    .locals 6
    .annotation build Landroidx/annotation/IntRange;
        from = 0x0L
        to = 0x1L
    .end annotation

    .prologue
    .line 313
    move-object v0, p0

    .local v0, "supported":Ljava/util/Locale;
    move-object v1, p1

    .local v1, "desired":Ljava/util/Locale;
    move-object v4, v0

    move-object v5, v1

    invoke-virtual {v4, v5}, Ljava/util/Locale;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 314
    const/4 v4, 0x1

    move v0, v4

    .line 337
    .end local v0    # "supported":Ljava/util/Locale;
    :goto_0
    return v0

    .line 316
    .restart local v0    # "supported":Ljava/util/Locale;
    :cond_0
    move-object v4, v0

    invoke-virtual {v4}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v4

    move-object v5, v1

    invoke-virtual {v5}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 317
    const/4 v4, 0x0

    move v0, v4

    goto :goto_0

    .line 319
    :cond_1
    move-object v4, v0

    invoke-static {v4}, Landroidx/core/os/LocaleListHelper;->isPseudoLocale(Ljava/util/Locale;)Z

    move-result v4

    if-nez v4, :cond_2

    move-object v4, v1

    invoke-static {v4}, Landroidx/core/os/LocaleListHelper;->isPseudoLocale(Ljava/util/Locale;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 322
    :cond_2
    const/4 v4, 0x0

    move v0, v4

    goto :goto_0

    .line 324
    :cond_3
    move-object v4, v0

    invoke-static {v4}, Landroidx/core/os/LocaleListHelper;->getLikelyScript(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v4

    move-object v2, v4

    .line 325
    .local v2, "supportedScr":Ljava/lang/String;
    move-object v4, v2

    invoke-virtual {v4}, Ljava/lang/String;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_6

    .line 329
    move-object v4, v0

    invoke-virtual {v4}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v4

    move-object v3, v4

    .line 330
    .local v3, "supportedRegion":Ljava/lang/String;
    move-object v4, v3

    invoke-virtual {v4}, Ljava/lang/String;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_4

    move-object v4, v3

    move-object v5, v1

    invoke-virtual {v5}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_5

    :cond_4
    const/4 v4, 0x1

    :goto_1
    move v0, v4

    goto :goto_0

    :cond_5
    const/4 v4, 0x0

    goto :goto_1

    .line 334
    .end local v3    # "supportedRegion":Ljava/lang/String;
    :cond_6
    move-object v4, v1

    invoke-static {v4}, Landroidx/core/os/LocaleListHelper;->getLikelyScript(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v4

    move-object v3, v4

    .line 337
    .local v3, "desiredScr":Ljava/lang/String;
    move-object v4, v2

    move-object v5, v3

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_7

    const/4 v4, 0x1

    :goto_2
    move v0, v4

    goto :goto_0

    :cond_7
    const/4 v4, 0x0

    goto :goto_2
.end method

.method static setDefault(Landroidx/core/os/LocaleListHelper;)V
    .locals 3
    .param p0    # Landroidx/core/os/LocaleListHelper;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation

        .annotation build Landroidx/annotation/Size;
            min = 0x1L
        .end annotation
    .end param
    .annotation build Landroidx/annotation/RestrictTo;
        value = {
            .enum Landroidx/annotation/RestrictTo$Scope;->LIBRARY_GROUP:Landroidx/annotation/RestrictTo$Scope;
        }
    .end annotation

    .prologue
    .line 550
    move-object v0, p0

    .local v0, "locales":Landroidx/core/os/LocaleListHelper;
    move-object v1, v0

    const/4 v2, 0x0

    invoke-static {v1, v2}, Landroidx/core/os/LocaleListHelper;->setDefault(Landroidx/core/os/LocaleListHelper;I)V

    .line 551
    return-void
.end method

.method static setDefault(Landroidx/core/os/LocaleListHelper;I)V
    .locals 9
    .param p0    # Landroidx/core/os/LocaleListHelper;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation

        .annotation build Landroidx/annotation/Size;
            min = 0x1L
        .end annotation
    .end param
    .annotation build Landroidx/annotation/RestrictTo;
        value = {
            .enum Landroidx/annotation/RestrictTo$Scope;->LIBRARY_GROUP:Landroidx/annotation/RestrictTo$Scope;
        }
    .end annotation

    .prologue
    .line 564
    move-object v0, p0

    .local v0, "locales":Landroidx/core/os/LocaleListHelper;
    move v1, p1

    .local v1, "localeIndex":I
    move-object v4, v0

    if-nez v4, :cond_0

    .line 565
    new-instance v4, Ljava/lang/NullPointerException;

    move-object v8, v4

    move-object v4, v8

    move-object v5, v8

    const-string/jumbo v6, "locales is null"

    invoke-direct {v5, v6}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 567
    :cond_0
    move-object v4, v0

    invoke-virtual {v4}, Landroidx/core/os/LocaleListHelper;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 568
    new-instance v4, Ljava/lang/IllegalArgumentException;

    move-object v8, v4

    move-object v4, v8

    move-object v5, v8

    const-string/jumbo v6, "locales is empty"

    invoke-direct {v5, v6}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 570
    :cond_1
    sget-object v4, Landroidx/core/os/LocaleListHelper;->sLock:Ljava/lang/Object;

    move-object v8, v4

    move-object v4, v8

    move-object v5, v8

    move-object v2, v5

    monitor-enter v4

    .line 571
    move-object v4, v0

    move v5, v1

    :try_start_0
    invoke-virtual {v4, v5}, Landroidx/core/os/LocaleListHelper;->get(I)Ljava/util/Locale;

    move-result-object v4

    sput-object v4, Landroidx/core/os/LocaleListHelper;->sLastDefaultLocale:Ljava/util/Locale;

    .line 572
    sget-object v4, Landroidx/core/os/LocaleListHelper;->sLastDefaultLocale:Ljava/util/Locale;

    invoke-static {v4}, Ljava/util/Locale;->setDefault(Ljava/util/Locale;)V

    .line 573
    move-object v4, v0

    sput-object v4, Landroidx/core/os/LocaleListHelper;->sLastExplicitlySetLocaleList:Landroidx/core/os/LocaleListHelper;

    .line 574
    move-object v4, v0

    sput-object v4, Landroidx/core/os/LocaleListHelper;->sDefaultLocaleList:Landroidx/core/os/LocaleListHelper;

    .line 575
    move v4, v1

    if-nez v4, :cond_2

    .line 576
    sget-object v4, Landroidx/core/os/LocaleListHelper;->sDefaultLocaleList:Landroidx/core/os/LocaleListHelper;

    sput-object v4, Landroidx/core/os/LocaleListHelper;->sDefaultAdjustedLocaleList:Landroidx/core/os/LocaleListHelper;

    .line 581
    :goto_0
    move-object v4, v2

    monitor-exit v4

    .line 582
    return-void

    .line 578
    :cond_2
    new-instance v4, Landroidx/core/os/LocaleListHelper;

    move-object v8, v4

    move-object v4, v8

    move-object v5, v8

    sget-object v6, Landroidx/core/os/LocaleListHelper;->sLastDefaultLocale:Ljava/util/Locale;

    sget-object v7, Landroidx/core/os/LocaleListHelper;->sDefaultLocaleList:Landroidx/core/os/LocaleListHelper;

    invoke-direct {v5, v6, v7}, Landroidx/core/os/LocaleListHelper;-><init>(Ljava/util/Locale;Landroidx/core/os/LocaleListHelper;)V

    sput-object v4, Landroidx/core/os/LocaleListHelper;->sDefaultAdjustedLocaleList:Landroidx/core/os/LocaleListHelper;

    goto :goto_0

    .line 581
    :catchall_0
    move-exception v4

    move-object v3, v4

    move-object v4, v2

    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object v4, v3

    throw v4
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 7

    .prologue
    .line 109
    move-object v0, p0

    .local v0, "this":Landroidx/core/os/LocaleListHelper;
    move-object v1, p1

    .local v1, "other":Ljava/lang/Object;
    move-object v4, v1

    move-object v5, v0

    if-ne v4, v5, :cond_0

    .line 110
    const/4 v4, 0x1

    move v0, v4

    .line 124
    .end local v0    # "this":Landroidx/core/os/LocaleListHelper;
    :goto_0
    return v0

    .line 112
    .restart local v0    # "this":Landroidx/core/os/LocaleListHelper;
    :cond_0
    move-object v4, v1

    instance-of v4, v4, Landroidx/core/os/LocaleListHelper;

    if-nez v4, :cond_1

    .line 113
    const/4 v4, 0x0

    move v0, v4

    goto :goto_0

    .line 115
    :cond_1
    move-object v4, v1

    check-cast v4, Landroidx/core/os/LocaleListHelper;

    iget-object v4, v4, Landroidx/core/os/LocaleListHelper;->mList:[Ljava/util/Locale;

    move-object v2, v4

    .line 116
    .local v2, "otherList":[Ljava/util/Locale;
    move-object v4, v0

    iget-object v4, v4, Landroidx/core/os/LocaleListHelper;->mList:[Ljava/util/Locale;

    array-length v4, v4

    move-object v5, v2

    array-length v5, v5

    if-eq v4, v5, :cond_2

    .line 117
    const/4 v4, 0x0

    move v0, v4

    goto :goto_0

    .line 119
    :cond_2
    const/4 v4, 0x0

    move v3, v4

    .local v3, "i":I
    :goto_1
    move v4, v3

    move-object v5, v0

    iget-object v5, v5, Landroidx/core/os/LocaleListHelper;->mList:[Ljava/util/Locale;

    array-length v5, v5

    if-ge v4, v5, :cond_4

    .line 120
    move-object v4, v0

    iget-object v4, v4, Landroidx/core/os/LocaleListHelper;->mList:[Ljava/util/Locale;

    move v5, v3

    aget-object v4, v4, v5

    move-object v5, v2

    move v6, v3

    aget-object v5, v5, v6

    invoke-virtual {v4, v5}, Ljava/util/Locale;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_3

    .line 121
    const/4 v4, 0x0

    move v0, v4

    goto :goto_0

    .line 119
    :cond_3
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 124
    :cond_4
    const/4 v4, 0x1

    move v0, v4

    goto :goto_0
.end method

.method get(I)Ljava/util/Locale;
    .locals 4
    .annotation build Landroidx/annotation/RestrictTo;
        value = {
            .enum Landroidx/annotation/RestrictTo$Scope;->LIBRARY_GROUP:Landroidx/annotation/RestrictTo$Scope;
        }
    .end annotation

    .prologue
    .line 62
    move-object v0, p0

    .local v0, "this":Landroidx/core/os/LocaleListHelper;
    move v1, p1

    .local v1, "index":I
    const/4 v2, 0x0

    move v3, v1

    if-gt v2, v3, :cond_0

    move v2, v1

    move-object v3, v0

    iget-object v3, v3, Landroidx/core/os/LocaleListHelper;->mList:[Ljava/util/Locale;

    array-length v3, v3

    if-ge v2, v3, :cond_0

    move-object v2, v0

    iget-object v2, v2, Landroidx/core/os/LocaleListHelper;->mList:[Ljava/util/Locale;

    move v3, v1

    aget-object v2, v2, v3

    :goto_0
    move-object v0, v2

    .end local v0    # "this":Landroidx/core/os/LocaleListHelper;
    return-object v0

    .restart local v0    # "this":Landroidx/core/os/LocaleListHelper;
    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method getFirstMatch([Ljava/lang/String;)Ljava/util/Locale;
    .locals 5
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .annotation build Landroidx/annotation/RestrictTo;
        value = {
            .enum Landroidx/annotation/RestrictTo$Scope;->LIBRARY_GROUP:Landroidx/annotation/RestrictTo$Scope;
        }
    .end annotation

    .prologue
    .line 408
    move-object v0, p0

    .local v0, "this":Landroidx/core/os/LocaleListHelper;
    move-object v1, p1

    .local v1, "supportedLocales":[Ljava/lang/String;
    move-object v2, v0

    move-object v3, v1

    invoke-static {v3}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v3

    const/4 v4, 0x0

    invoke-direct {v2, v3, v4}, Landroidx/core/os/LocaleListHelper;->computeFirstMatch(Ljava/util/Collection;Z)Ljava/util/Locale;

    move-result-object v2

    move-object v0, v2

    .end local v0    # "this":Landroidx/core/os/LocaleListHelper;
    return-object v0
.end method

.method getFirstMatchIndex([Ljava/lang/String;)I
    .locals 5
    .annotation build Landroidx/annotation/RestrictTo;
        value = {
            .enum Landroidx/annotation/RestrictTo$Scope;->LIBRARY_GROUP:Landroidx/annotation/RestrictTo$Scope;
        }
    .end annotation

    .prologue
    .line 417
    move-object v0, p0

    .local v0, "this":Landroidx/core/os/LocaleListHelper;
    move-object v1, p1

    .local v1, "supportedLocales":[Ljava/lang/String;
    move-object v2, v0

    move-object v3, v1

    invoke-static {v3}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v3

    const/4 v4, 0x0

    invoke-direct {v2, v3, v4}, Landroidx/core/os/LocaleListHelper;->computeFirstMatchIndex(Ljava/util/Collection;Z)I

    move-result v2

    move v0, v2

    .end local v0    # "this":Landroidx/core/os/LocaleListHelper;
    return v0
.end method

.method getFirstMatchIndexWithEnglishSupported(Ljava/util/Collection;)I
    .locals 5
    .annotation build Landroidx/annotation/RestrictTo;
        value = {
            .enum Landroidx/annotation/RestrictTo$Scope;->LIBRARY_GROUP:Landroidx/annotation/RestrictTo$Scope;
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<",
            "Ljava/lang/String;",
            ">;)I"
        }
    .end annotation

    .prologue
    .line 437
    move-object v0, p0

    .local v0, "this":Landroidx/core/os/LocaleListHelper;
    move-object v1, p1

    .local v1, "supportedLocales":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/lang/String;>;"
    move-object v2, v0

    move-object v3, v1

    const/4 v4, 0x1

    invoke-direct {v2, v3, v4}, Landroidx/core/os/LocaleListHelper;->computeFirstMatchIndex(Ljava/util/Collection;Z)I

    move-result v2

    move v0, v2

    .end local v0    # "this":Landroidx/core/os/LocaleListHelper;
    return v0
.end method

.method getFirstMatchIndexWithEnglishSupported([Ljava/lang/String;)I
    .locals 4
    .annotation build Landroidx/annotation/RestrictTo;
        value = {
            .enum Landroidx/annotation/RestrictTo$Scope;->LIBRARY_GROUP:Landroidx/annotation/RestrictTo$Scope;
        }
    .end annotation

    .prologue
    .line 445
    move-object v0, p0

    .local v0, "this":Landroidx/core/os/LocaleListHelper;
    move-object v1, p1

    .local v1, "supportedLocales":[Ljava/lang/String;
    move-object v2, v0

    move-object v3, v1

    invoke-static {v3}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroidx/core/os/LocaleListHelper;->getFirstMatchIndexWithEnglishSupported(Ljava/util/Collection;)I

    move-result v2

    move v0, v2

    .end local v0    # "this":Landroidx/core/os/LocaleListHelper;
    return v0
.end method

.method getFirstMatchWithEnglishSupported([Ljava/lang/String;)Ljava/util/Locale;
    .locals 5
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .annotation build Landroidx/annotation/RestrictTo;
        value = {
            .enum Landroidx/annotation/RestrictTo$Scope;->LIBRARY_GROUP:Landroidx/annotation/RestrictTo$Scope;
        }
    .end annotation

    .prologue
    .line 428
    move-object v0, p0

    .local v0, "this":Landroidx/core/os/LocaleListHelper;
    move-object v1, p1

    .local v1, "supportedLocales":[Ljava/lang/String;
    move-object v2, v0

    move-object v3, v1

    invoke-static {v3}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v3

    const/4 v4, 0x1

    invoke-direct {v2, v3, v4}, Landroidx/core/os/LocaleListHelper;->computeFirstMatch(Ljava/util/Collection;Z)Ljava/util/Locale;

    move-result-object v2

    move-object v0, v2

    .end local v0    # "this":Landroidx/core/os/LocaleListHelper;
    return-object v0
.end method

.method public hashCode()I
    .locals 6

    .prologue
    .line 129
    move-object v0, p0

    .local v0, "this":Landroidx/core/os/LocaleListHelper;
    const/4 v3, 0x1

    move v1, v3

    .line 130
    .local v1, "result":I
    const/4 v3, 0x0

    move v2, v3

    .local v2, "i":I
    :goto_0
    move v3, v2

    move-object v4, v0

    iget-object v4, v4, Landroidx/core/os/LocaleListHelper;->mList:[Ljava/util/Locale;

    array-length v4, v4

    if-ge v3, v4, :cond_0

    .line 131
    const/16 v3, 0x1f

    move v4, v1

    mul-int/2addr v3, v4

    move-object v4, v0

    iget-object v4, v4, Landroidx/core/os/LocaleListHelper;->mList:[Ljava/util/Locale;

    move v5, v2

    aget-object v4, v4, v5

    invoke-virtual {v4}, Ljava/util/Locale;->hashCode()I

    move-result v4

    add-int/2addr v3, v4

    move v1, v3

    .line 130
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 133
    :cond_0
    move v3, v1

    move v0, v3

    .end local v0    # "this":Landroidx/core/os/LocaleListHelper;
    return v0
.end method

.method indexOf(Ljava/util/Locale;)I
    .locals 5
    .annotation build Landroidx/annotation/IntRange;
        from = -0x1L
    .end annotation

    .annotation build Landroidx/annotation/RestrictTo;
        value = {
            .enum Landroidx/annotation/RestrictTo$Scope;->LIBRARY_GROUP:Landroidx/annotation/RestrictTo$Scope;
        }
    .end annotation

    .prologue
    .line 99
    move-object v0, p0

    .local v0, "this":Landroidx/core/os/LocaleListHelper;
    move-object v1, p1

    .local v1, "locale":Ljava/util/Locale;
    const/4 v3, 0x0

    move v2, v3

    .local v2, "i":I
    :goto_0
    move v3, v2

    move-object v4, v0

    iget-object v4, v4, Landroidx/core/os/LocaleListHelper;->mList:[Ljava/util/Locale;

    array-length v4, v4

    if-ge v3, v4, :cond_1

    .line 100
    move-object v3, v0

    iget-object v3, v3, Landroidx/core/os/LocaleListHelper;->mList:[Ljava/util/Locale;

    move v4, v2

    aget-object v3, v3, v4

    move-object v4, v1

    invoke-virtual {v3, v4}, Ljava/util/Locale;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 101
    move v3, v2

    move v0, v3

    .line 104
    .end local v0    # "this":Landroidx/core/os/LocaleListHelper;
    :goto_1
    return v0

    .line 99
    .restart local v0    # "this":Landroidx/core/os/LocaleListHelper;
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 104
    :cond_1
    const/4 v3, -0x1

    move v0, v3

    goto :goto_1
.end method

.method isEmpty()Z
    .locals 2
    .annotation build Landroidx/annotation/RestrictTo;
        value = {
            .enum Landroidx/annotation/RestrictTo$Scope;->LIBRARY_GROUP:Landroidx/annotation/RestrictTo$Scope;
        }
    .end annotation

    .prologue
    .line 74
    move-object v0, p0

    .local v0, "this":Landroidx/core/os/LocaleListHelper;
    move-object v1, v0

    iget-object v1, v1, Landroidx/core/os/LocaleListHelper;->mList:[Ljava/util/Locale;

    array-length v1, v1

    if-nez v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    move v0, v1

    .end local v0    # "this":Landroidx/core/os/LocaleListHelper;
    return v0

    .restart local v0    # "this":Landroidx/core/os/LocaleListHelper;
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method size()I
    .locals 2
    .annotation build Landroidx/annotation/IntRange;
        from = 0x0L
    .end annotation

    .annotation build Landroidx/annotation/RestrictTo;
        value = {
            .enum Landroidx/annotation/RestrictTo$Scope;->LIBRARY_GROUP:Landroidx/annotation/RestrictTo$Scope;
        }
    .end annotation

    .prologue
    .line 84
    move-object v0, p0

    .local v0, "this":Landroidx/core/os/LocaleListHelper;
    move-object v1, v0

    iget-object v1, v1, Landroidx/core/os/LocaleListHelper;->mList:[Ljava/util/Locale;

    array-length v1, v1

    move v0, v1

    .end local v0    # "this":Landroidx/core/os/LocaleListHelper;
    return v0
.end method

.method toLanguageTags()Ljava/lang/String;
    .locals 2
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation build Landroidx/annotation/RestrictTo;
        value = {
            .enum Landroidx/annotation/RestrictTo$Scope;->LIBRARY_GROUP:Landroidx/annotation/RestrictTo$Scope;
        }
    .end annotation

    .prologue
    .line 157
    move-object v0, p0

    .local v0, "this":Landroidx/core/os/LocaleListHelper;
    move-object v1, v0

    iget-object v1, v1, Landroidx/core/os/LocaleListHelper;->mStringRepresentation:Ljava/lang/String;

    move-object v0, v1

    .end local v0    # "this":Landroidx/core/os/LocaleListHelper;
    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 7

    .prologue
    .line 138
    move-object v0, p0

    .local v0, "this":Landroidx/core/os/LocaleListHelper;
    new-instance v3, Ljava/lang/StringBuilder;

    move-object v6, v3

    move-object v3, v6

    move-object v4, v6

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    move-object v1, v3

    .line 139
    .local v1, "sb":Ljava/lang/StringBuilder;
    move-object v3, v1

    const-string/jumbo v4, "["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 140
    const/4 v3, 0x0

    move v2, v3

    .local v2, "i":I
    :goto_0
    move v3, v2

    move-object v4, v0

    iget-object v4, v4, Landroidx/core/os/LocaleListHelper;->mList:[Ljava/util/Locale;

    array-length v4, v4

    if-ge v3, v4, :cond_1

    .line 141
    move-object v3, v1

    move-object v4, v0

    iget-object v4, v4, Landroidx/core/os/LocaleListHelper;->mList:[Ljava/util/Locale;

    move v5, v2

    aget-object v4, v4, v5

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 142
    move v3, v2

    move-object v4, v0

    iget-object v4, v4, Landroidx/core/os/LocaleListHelper;->mList:[Ljava/util/Locale;

    array-length v4, v4

    const/4 v5, 0x1

    add-int/lit8 v4, v4, -0x1

    if-ge v3, v4, :cond_0

    .line 143
    move-object v3, v1

    const/16 v4, 0x2c

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 140
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 146
    :cond_1
    move-object v3, v1

    const-string/jumbo v4, "]"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 147
    move-object v3, v1

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object v0, v3

    .end local v0    # "this":Landroidx/core/os/LocaleListHelper;
    return-object v0
.end method
