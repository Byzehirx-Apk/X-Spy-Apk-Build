.class Landroidx/core/text/util/FindAddress;
.super Ljava/lang/Object;
.source "FindAddress.java"


# annotations
.annotation build Landroidx/annotation/RestrictTo;
    value = {
        .enum Landroidx/annotation/RestrictTo$Scope;->LIBRARY_GROUP:Landroidx/annotation/RestrictTo$Scope;
    }
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/core/text/util/FindAddress$ZipRange;
    }
.end annotation


# static fields
.field private static final HOUSE_COMPONENT:Ljava/lang/String; = "(?:one|\\d+([a-z](?=[^a-z]|$)|st|nd|rd|th)?)"

.field private static final HOUSE_END:Ljava/lang/String; = "(?=[,\"\'\t \u00a0\u1680\u2000\u2001\u2002\u2003\u2004\u2005\u2006\u2007\u2008\u2009\u200a\u202f\u205f\u3000\n\u000b\u000c\r\u0085\u2028\u2029]|$)"

.field private static final HOUSE_POST_DELIM:Ljava/lang/String; = ",\"\'\t \u00a0\u1680\u2000\u2001\u2002\u2003\u2004\u2005\u2006\u2007\u2008\u2009\u200a\u202f\u205f\u3000\n\u000b\u000c\r\u0085\u2028\u2029"

.field private static final HOUSE_PRE_DELIM:Ljava/lang/String; = ":,\"\'\t \u00a0\u1680\u2000\u2001\u2002\u2003\u2004\u2005\u2006\u2007\u2008\u2009\u200a\u202f\u205f\u3000\n\u000b\u000c\r\u0085\u2028\u2029"

.field private static final MAX_ADDRESS_LINES:I = 0x5

.field private static final MAX_ADDRESS_WORDS:I = 0xe

.field private static final MAX_LOCATION_NAME_DISTANCE:I = 0x5

.field private static final MIN_ADDRESS_WORDS:I = 0x4

.field private static final NL:Ljava/lang/String; = "\n\u000b\u000c\r\u0085\u2028\u2029"

.field private static final SP:Ljava/lang/String; = "\t \u00a0\u1680\u2000\u2001\u2002\u2003\u2004\u2005\u2006\u2007\u2008\u2009\u200a\u202f\u205f\u3000"

.field private static final WORD_DELIM:Ljava/lang/String; = ",*\u2022\t \u00a0\u1680\u2000\u2001\u2002\u2003\u2004\u2005\u2006\u2007\u2008\u2009\u200a\u202f\u205f\u3000\n\u000b\u000c\r\u0085\u2028\u2029"

.field private static final WORD_END:Ljava/lang/String; = "(?=[,*\u2022\t \u00a0\u1680\u2000\u2001\u2002\u2003\u2004\u2005\u2006\u2007\u2008\u2009\u200a\u202f\u205f\u3000\n\u000b\u000c\r\u0085\u2028\u2029]|$)"

.field private static final WS:Ljava/lang/String; = "\t \u00a0\u1680\u2000\u2001\u2002\u2003\u2004\u2005\u2006\u2007\u2008\u2009\u200a\u202f\u205f\u3000\n\u000b\u000c\r\u0085\u2028\u2029"

.field private static final kMaxAddressNameWordLength:I = 0x19

.field private static final sHouseNumberRe:Ljava/util/regex/Pattern;

.field private static final sLocationNameRe:Ljava/util/regex/Pattern;

.field private static final sStateRe:Ljava/util/regex/Pattern;

.field private static final sStateZipCodeRanges:[Landroidx/core/text/util/FindAddress$ZipRange;

.field private static final sSuffixedNumberRe:Ljava/util/regex/Pattern;

.field private static final sWordRe:Ljava/util/regex/Pattern;

.field private static final sZipCodeRe:Ljava/util/regex/Pattern;


# direct methods
.method static constructor <clinit>()V
    .locals 10

    .prologue
    .line 72
    const/16 v0, 0x3b

    new-array v0, v0, [Landroidx/core/text/util/FindAddress$ZipRange;

    move-object v9, v0

    move-object v0, v9

    move-object v1, v9

    const/4 v2, 0x0

    new-instance v3, Landroidx/core/text/util/FindAddress$ZipRange;

    move-object v9, v3

    move-object v3, v9

    move-object v4, v9

    const/16 v5, 0x63

    const/16 v6, 0x63

    const/4 v7, -0x1

    const/4 v8, -0x1

    invoke-direct {v4, v5, v6, v7, v8}, Landroidx/core/text/util/FindAddress$ZipRange;-><init>(IIII)V

    aput-object v3, v1, v2

    move-object v9, v0

    move-object v0, v9

    move-object v1, v9

    const/4 v2, 0x1

    new-instance v3, Landroidx/core/text/util/FindAddress$ZipRange;

    move-object v9, v3

    move-object v3, v9

    move-object v4, v9

    const/16 v5, 0x23

    const/16 v6, 0x24

    const/4 v7, -0x1

    const/4 v8, -0x1

    invoke-direct {v4, v5, v6, v7, v8}, Landroidx/core/text/util/FindAddress$ZipRange;-><init>(IIII)V

    aput-object v3, v1, v2

    move-object v9, v0

    move-object v0, v9

    move-object v1, v9

    const/4 v2, 0x2

    new-instance v3, Landroidx/core/text/util/FindAddress$ZipRange;

    move-object v9, v3

    move-object v3, v9

    move-object v4, v9

    const/16 v5, 0x47

    const/16 v6, 0x48

    const/4 v7, -0x1

    const/4 v8, -0x1

    invoke-direct {v4, v5, v6, v7, v8}, Landroidx/core/text/util/FindAddress$ZipRange;-><init>(IIII)V

    aput-object v3, v1, v2

    move-object v9, v0

    move-object v0, v9

    move-object v1, v9

    const/4 v2, 0x3

    new-instance v3, Landroidx/core/text/util/FindAddress$ZipRange;

    move-object v9, v3

    move-object v3, v9

    move-object v4, v9

    const/16 v5, 0x60

    const/16 v6, 0x60

    const/4 v7, -0x1

    const/4 v8, -0x1

    invoke-direct {v4, v5, v6, v7, v8}, Landroidx/core/text/util/FindAddress$ZipRange;-><init>(IIII)V

    aput-object v3, v1, v2

    move-object v9, v0

    move-object v0, v9

    move-object v1, v9

    const/4 v2, 0x4

    new-instance v3, Landroidx/core/text/util/FindAddress$ZipRange;

    move-object v9, v3

    move-object v3, v9

    move-object v4, v9

    const/16 v5, 0x55

    const/16 v6, 0x56

    const/4 v7, -0x1

    const/4 v8, -0x1

    invoke-direct {v4, v5, v6, v7, v8}, Landroidx/core/text/util/FindAddress$ZipRange;-><init>(IIII)V

    aput-object v3, v1, v2

    move-object v9, v0

    move-object v0, v9

    move-object v1, v9

    const/4 v2, 0x5

    new-instance v3, Landroidx/core/text/util/FindAddress$ZipRange;

    move-object v9, v3

    move-object v3, v9

    move-object v4, v9

    const/16 v5, 0x5a

    const/16 v6, 0x60

    const/4 v7, -0x1

    const/4 v8, -0x1

    invoke-direct {v4, v5, v6, v7, v8}, Landroidx/core/text/util/FindAddress$ZipRange;-><init>(IIII)V

    aput-object v3, v1, v2

    move-object v9, v0

    move-object v0, v9

    move-object v1, v9

    const/4 v2, 0x6

    new-instance v3, Landroidx/core/text/util/FindAddress$ZipRange;

    move-object v9, v3

    move-object v3, v9

    move-object v4, v9

    const/16 v5, 0x50

    const/16 v6, 0x51

    const/4 v7, -0x1

    const/4 v8, -0x1

    invoke-direct {v4, v5, v6, v7, v8}, Landroidx/core/text/util/FindAddress$ZipRange;-><init>(IIII)V

    aput-object v3, v1, v2

    move-object v9, v0

    move-object v0, v9

    move-object v1, v9

    const/4 v2, 0x7

    new-instance v3, Landroidx/core/text/util/FindAddress$ZipRange;

    move-object v9, v3

    move-object v3, v9

    move-object v4, v9

    const/4 v5, 0x6

    const/4 v6, 0x6

    const/4 v7, -0x1

    const/4 v8, -0x1

    invoke-direct {v4, v5, v6, v7, v8}, Landroidx/core/text/util/FindAddress$ZipRange;-><init>(IIII)V

    aput-object v3, v1, v2

    move-object v9, v0

    move-object v0, v9

    move-object v1, v9

    const/16 v2, 0x8

    new-instance v3, Landroidx/core/text/util/FindAddress$ZipRange;

    move-object v9, v3

    move-object v3, v9

    move-object v4, v9

    const/16 v5, 0x14

    const/16 v6, 0x14

    const/4 v7, -0x1

    const/4 v8, -0x1

    invoke-direct {v4, v5, v6, v7, v8}, Landroidx/core/text/util/FindAddress$ZipRange;-><init>(IIII)V

    aput-object v3, v1, v2

    move-object v9, v0

    move-object v0, v9

    move-object v1, v9

    const/16 v2, 0x9

    new-instance v3, Landroidx/core/text/util/FindAddress$ZipRange;

    move-object v9, v3

    move-object v3, v9

    move-object v4, v9

    const/16 v5, 0x13

    const/16 v6, 0x13

    const/4 v7, -0x1

    const/4 v8, -0x1

    invoke-direct {v4, v5, v6, v7, v8}, Landroidx/core/text/util/FindAddress$ZipRange;-><init>(IIII)V

    aput-object v3, v1, v2

    move-object v9, v0

    move-object v0, v9

    move-object v1, v9

    const/16 v2, 0xa

    new-instance v3, Landroidx/core/text/util/FindAddress$ZipRange;

    move-object v9, v3

    move-object v3, v9

    move-object v4, v9

    const/16 v5, 0x20

    const/16 v6, 0x22

    const/4 v7, -0x1

    const/4 v8, -0x1

    invoke-direct {v4, v5, v6, v7, v8}, Landroidx/core/text/util/FindAddress$ZipRange;-><init>(IIII)V

    aput-object v3, v1, v2

    move-object v9, v0

    move-object v0, v9

    move-object v1, v9

    const/16 v2, 0xb

    new-instance v3, Landroidx/core/text/util/FindAddress$ZipRange;

    move-object v9, v3

    move-object v3, v9

    move-object v4, v9

    const/16 v5, 0x60

    const/16 v6, 0x60

    const/4 v7, -0x1

    const/4 v8, -0x1

    invoke-direct {v4, v5, v6, v7, v8}, Landroidx/core/text/util/FindAddress$ZipRange;-><init>(IIII)V

    aput-object v3, v1, v2

    move-object v9, v0

    move-object v0, v9

    move-object v1, v9

    const/16 v2, 0xc

    new-instance v3, Landroidx/core/text/util/FindAddress$ZipRange;

    move-object v9, v3

    move-object v3, v9

    move-object v4, v9

    const/16 v5, 0x1e

    const/16 v6, 0x1f

    const/4 v7, -0x1

    const/4 v8, -0x1

    invoke-direct {v4, v5, v6, v7, v8}, Landroidx/core/text/util/FindAddress$ZipRange;-><init>(IIII)V

    aput-object v3, v1, v2

    move-object v9, v0

    move-object v0, v9

    move-object v1, v9

    const/16 v2, 0xd

    new-instance v3, Landroidx/core/text/util/FindAddress$ZipRange;

    move-object v9, v3

    move-object v3, v9

    move-object v4, v9

    const/16 v5, 0x60

    const/16 v6, 0x60

    const/4 v7, -0x1

    const/4 v8, -0x1

    invoke-direct {v4, v5, v6, v7, v8}, Landroidx/core/text/util/FindAddress$ZipRange;-><init>(IIII)V

    aput-object v3, v1, v2

    move-object v9, v0

    move-object v0, v9

    move-object v1, v9

    const/16 v2, 0xe

    new-instance v3, Landroidx/core/text/util/FindAddress$ZipRange;

    move-object v9, v3

    move-object v3, v9

    move-object v4, v9

    const/16 v5, 0x60

    const/16 v6, 0x60

    const/4 v7, -0x1

    const/4 v8, -0x1

    invoke-direct {v4, v5, v6, v7, v8}, Landroidx/core/text/util/FindAddress$ZipRange;-><init>(IIII)V

    aput-object v3, v1, v2

    move-object v9, v0

    move-object v0, v9

    move-object v1, v9

    const/16 v2, 0xf

    new-instance v3, Landroidx/core/text/util/FindAddress$ZipRange;

    move-object v9, v3

    move-object v3, v9

    move-object v4, v9

    const/16 v5, 0x32

    const/16 v6, 0x34

    const/4 v7, -0x1

    const/4 v8, -0x1

    invoke-direct {v4, v5, v6, v7, v8}, Landroidx/core/text/util/FindAddress$ZipRange;-><init>(IIII)V

    aput-object v3, v1, v2

    move-object v9, v0

    move-object v0, v9

    move-object v1, v9

    const/16 v2, 0x10

    new-instance v3, Landroidx/core/text/util/FindAddress$ZipRange;

    move-object v9, v3

    move-object v3, v9

    move-object v4, v9

    const/16 v5, 0x53

    const/16 v6, 0x53

    const/4 v7, -0x1

    const/4 v8, -0x1

    invoke-direct {v4, v5, v6, v7, v8}, Landroidx/core/text/util/FindAddress$ZipRange;-><init>(IIII)V

    aput-object v3, v1, v2

    move-object v9, v0

    move-object v0, v9

    move-object v1, v9

    const/16 v2, 0x11

    new-instance v3, Landroidx/core/text/util/FindAddress$ZipRange;

    move-object v9, v3

    move-object v3, v9

    move-object v4, v9

    const/16 v5, 0x3c

    const/16 v6, 0x3e

    const/4 v7, -0x1

    const/4 v8, -0x1

    invoke-direct {v4, v5, v6, v7, v8}, Landroidx/core/text/util/FindAddress$ZipRange;-><init>(IIII)V

    aput-object v3, v1, v2

    move-object v9, v0

    move-object v0, v9

    move-object v1, v9

    const/16 v2, 0x12

    new-instance v3, Landroidx/core/text/util/FindAddress$ZipRange;

    move-object v9, v3

    move-object v3, v9

    move-object v4, v9

    const/16 v5, 0x2e

    const/16 v6, 0x2f

    const/4 v7, -0x1

    const/4 v8, -0x1

    invoke-direct {v4, v5, v6, v7, v8}, Landroidx/core/text/util/FindAddress$ZipRange;-><init>(IIII)V

    aput-object v3, v1, v2

    move-object v9, v0

    move-object v0, v9

    move-object v1, v9

    const/16 v2, 0x13

    new-instance v3, Landroidx/core/text/util/FindAddress$ZipRange;

    move-object v9, v3

    move-object v3, v9

    move-object v4, v9

    const/16 v5, 0x42

    const/16 v6, 0x43

    const/16 v7, 0x49

    const/4 v8, -0x1

    invoke-direct {v4, v5, v6, v7, v8}, Landroidx/core/text/util/FindAddress$ZipRange;-><init>(IIII)V

    aput-object v3, v1, v2

    move-object v9, v0

    move-object v0, v9

    move-object v1, v9

    const/16 v2, 0x14

    new-instance v3, Landroidx/core/text/util/FindAddress$ZipRange;

    move-object v9, v3

    move-object v3, v9

    move-object v4, v9

    const/16 v5, 0x28

    const/16 v6, 0x2a

    const/4 v7, -0x1

    const/4 v8, -0x1

    invoke-direct {v4, v5, v6, v7, v8}, Landroidx/core/text/util/FindAddress$ZipRange;-><init>(IIII)V

    aput-object v3, v1, v2

    move-object v9, v0

    move-object v0, v9

    move-object v1, v9

    const/16 v2, 0x15

    new-instance v3, Landroidx/core/text/util/FindAddress$ZipRange;

    move-object v9, v3

    move-object v3, v9

    move-object v4, v9

    const/16 v5, 0x46

    const/16 v6, 0x47

    const/4 v7, -0x1

    const/4 v8, -0x1

    invoke-direct {v4, v5, v6, v7, v8}, Landroidx/core/text/util/FindAddress$ZipRange;-><init>(IIII)V

    aput-object v3, v1, v2

    move-object v9, v0

    move-object v0, v9

    move-object v1, v9

    const/16 v2, 0x16

    new-instance v3, Landroidx/core/text/util/FindAddress$ZipRange;

    move-object v9, v3

    move-object v3, v9

    move-object v4, v9

    const/4 v5, 0x1

    const/4 v6, 0x2

    const/4 v7, -0x1

    const/4 v8, -0x1

    invoke-direct {v4, v5, v6, v7, v8}, Landroidx/core/text/util/FindAddress$ZipRange;-><init>(IIII)V

    aput-object v3, v1, v2

    move-object v9, v0

    move-object v0, v9

    move-object v1, v9

    const/16 v2, 0x17

    new-instance v3, Landroidx/core/text/util/FindAddress$ZipRange;

    move-object v9, v3

    move-object v3, v9

    move-object v4, v9

    const/16 v5, 0x14

    const/16 v6, 0x15

    const/4 v7, -0x1

    const/4 v8, -0x1

    invoke-direct {v4, v5, v6, v7, v8}, Landroidx/core/text/util/FindAddress$ZipRange;-><init>(IIII)V

    aput-object v3, v1, v2

    move-object v9, v0

    move-object v0, v9

    move-object v1, v9

    const/16 v2, 0x18

    new-instance v3, Landroidx/core/text/util/FindAddress$ZipRange;

    move-object v9, v3

    move-object v3, v9

    move-object v4, v9

    const/4 v5, 0x3

    const/4 v6, 0x4

    const/4 v7, -0x1

    const/4 v8, -0x1

    invoke-direct {v4, v5, v6, v7, v8}, Landroidx/core/text/util/FindAddress$ZipRange;-><init>(IIII)V

    aput-object v3, v1, v2

    move-object v9, v0

    move-object v0, v9

    move-object v1, v9

    const/16 v2, 0x19

    new-instance v3, Landroidx/core/text/util/FindAddress$ZipRange;

    move-object v9, v3

    move-object v3, v9

    move-object v4, v9

    const/16 v5, 0x60

    const/16 v6, 0x60

    const/4 v7, -0x1

    const/4 v8, -0x1

    invoke-direct {v4, v5, v6, v7, v8}, Landroidx/core/text/util/FindAddress$ZipRange;-><init>(IIII)V

    aput-object v3, v1, v2

    move-object v9, v0

    move-object v0, v9

    move-object v1, v9

    const/16 v2, 0x1a

    new-instance v3, Landroidx/core/text/util/FindAddress$ZipRange;

    move-object v9, v3

    move-object v3, v9

    move-object v4, v9

    const/16 v5, 0x30

    const/16 v6, 0x31

    const/4 v7, -0x1

    const/4 v8, -0x1

    invoke-direct {v4, v5, v6, v7, v8}, Landroidx/core/text/util/FindAddress$ZipRange;-><init>(IIII)V

    aput-object v3, v1, v2

    move-object v9, v0

    move-object v0, v9

    move-object v1, v9

    const/16 v2, 0x1b

    new-instance v3, Landroidx/core/text/util/FindAddress$ZipRange;

    move-object v9, v3

    move-object v3, v9

    move-object v4, v9

    const/16 v5, 0x37

    const/16 v6, 0x38

    const/4 v7, -0x1

    const/4 v8, -0x1

    invoke-direct {v4, v5, v6, v7, v8}, Landroidx/core/text/util/FindAddress$ZipRange;-><init>(IIII)V

    aput-object v3, v1, v2

    move-object v9, v0

    move-object v0, v9

    move-object v1, v9

    const/16 v2, 0x1c

    new-instance v3, Landroidx/core/text/util/FindAddress$ZipRange;

    move-object v9, v3

    move-object v3, v9

    move-object v4, v9

    const/16 v5, 0x3f

    const/16 v6, 0x41

    const/4 v7, -0x1

    const/4 v8, -0x1

    invoke-direct {v4, v5, v6, v7, v8}, Landroidx/core/text/util/FindAddress$ZipRange;-><init>(IIII)V

    aput-object v3, v1, v2

    move-object v9, v0

    move-object v0, v9

    move-object v1, v9

    const/16 v2, 0x1d

    new-instance v3, Landroidx/core/text/util/FindAddress$ZipRange;

    move-object v9, v3

    move-object v3, v9

    move-object v4, v9

    const/16 v5, 0x60

    const/16 v6, 0x60

    const/4 v7, -0x1

    const/4 v8, -0x1

    invoke-direct {v4, v5, v6, v7, v8}, Landroidx/core/text/util/FindAddress$ZipRange;-><init>(IIII)V

    aput-object v3, v1, v2

    move-object v9, v0

    move-object v0, v9

    move-object v1, v9

    const/16 v2, 0x1e

    new-instance v3, Landroidx/core/text/util/FindAddress$ZipRange;

    move-object v9, v3

    move-object v3, v9

    move-object v4, v9

    const/16 v5, 0x26

    const/16 v6, 0x27

    const/4 v7, -0x1

    const/4 v8, -0x1

    invoke-direct {v4, v5, v6, v7, v8}, Landroidx/core/text/util/FindAddress$ZipRange;-><init>(IIII)V

    aput-object v3, v1, v2

    move-object v9, v0

    move-object v0, v9

    move-object v1, v9

    const/16 v2, 0x1f

    new-instance v3, Landroidx/core/text/util/FindAddress$ZipRange;

    move-object v9, v3

    move-object v3, v9

    move-object v4, v9

    const/16 v5, 0x37

    const/16 v6, 0x38

    const/4 v7, -0x1

    const/4 v8, -0x1

    invoke-direct {v4, v5, v6, v7, v8}, Landroidx/core/text/util/FindAddress$ZipRange;-><init>(IIII)V

    aput-object v3, v1, v2

    move-object v9, v0

    move-object v0, v9

    move-object v1, v9

    const/16 v2, 0x20

    new-instance v3, Landroidx/core/text/util/FindAddress$ZipRange;

    move-object v9, v3

    move-object v3, v9

    move-object v4, v9

    const/16 v5, 0x1b

    const/16 v6, 0x1c

    const/4 v7, -0x1

    const/4 v8, -0x1

    invoke-direct {v4, v5, v6, v7, v8}, Landroidx/core/text/util/FindAddress$ZipRange;-><init>(IIII)V

    aput-object v3, v1, v2

    move-object v9, v0

    move-object v0, v9

    move-object v1, v9

    const/16 v2, 0x21

    new-instance v3, Landroidx/core/text/util/FindAddress$ZipRange;

    move-object v9, v3

    move-object v3, v9

    move-object v4, v9

    const/16 v5, 0x3a

    const/16 v6, 0x3a

    const/4 v7, -0x1

    const/4 v8, -0x1

    invoke-direct {v4, v5, v6, v7, v8}, Landroidx/core/text/util/FindAddress$ZipRange;-><init>(IIII)V

    aput-object v3, v1, v2

    move-object v9, v0

    move-object v0, v9

    move-object v1, v9

    const/16 v2, 0x22

    new-instance v3, Landroidx/core/text/util/FindAddress$ZipRange;

    move-object v9, v3

    move-object v3, v9

    move-object v4, v9

    const/16 v5, 0x44

    const/16 v6, 0x45

    const/4 v7, -0x1

    const/4 v8, -0x1

    invoke-direct {v4, v5, v6, v7, v8}, Landroidx/core/text/util/FindAddress$ZipRange;-><init>(IIII)V

    aput-object v3, v1, v2

    move-object v9, v0

    move-object v0, v9

    move-object v1, v9

    const/16 v2, 0x23

    new-instance v3, Landroidx/core/text/util/FindAddress$ZipRange;

    move-object v9, v3

    move-object v3, v9

    move-object v4, v9

    const/4 v5, 0x3

    const/4 v6, 0x4

    const/4 v7, -0x1

    const/4 v8, -0x1

    invoke-direct {v4, v5, v6, v7, v8}, Landroidx/core/text/util/FindAddress$ZipRange;-><init>(IIII)V

    aput-object v3, v1, v2

    move-object v9, v0

    move-object v0, v9

    move-object v1, v9

    const/16 v2, 0x24

    new-instance v3, Landroidx/core/text/util/FindAddress$ZipRange;

    move-object v9, v3

    move-object v3, v9

    move-object v4, v9

    const/4 v5, 0x7

    const/16 v6, 0x8

    const/4 v7, -0x1

    const/4 v8, -0x1

    invoke-direct {v4, v5, v6, v7, v8}, Landroidx/core/text/util/FindAddress$ZipRange;-><init>(IIII)V

    aput-object v3, v1, v2

    move-object v9, v0

    move-object v0, v9

    move-object v1, v9

    const/16 v2, 0x25

    new-instance v3, Landroidx/core/text/util/FindAddress$ZipRange;

    move-object v9, v3

    move-object v3, v9

    move-object v4, v9

    const/16 v5, 0x57

    const/16 v6, 0x58

    const/16 v7, 0x56

    const/4 v8, -0x1

    invoke-direct {v4, v5, v6, v7, v8}, Landroidx/core/text/util/FindAddress$ZipRange;-><init>(IIII)V

    aput-object v3, v1, v2

    move-object v9, v0

    move-object v0, v9

    move-object v1, v9

    const/16 v2, 0x26

    new-instance v3, Landroidx/core/text/util/FindAddress$ZipRange;

    move-object v9, v3

    move-object v3, v9

    move-object v4, v9

    const/16 v5, 0x58

    const/16 v6, 0x59

    const/16 v7, 0x60

    const/4 v8, -0x1

    invoke-direct {v4, v5, v6, v7, v8}, Landroidx/core/text/util/FindAddress$ZipRange;-><init>(IIII)V

    aput-object v3, v1, v2

    move-object v9, v0

    move-object v0, v9

    move-object v1, v9

    const/16 v2, 0x27

    new-instance v3, Landroidx/core/text/util/FindAddress$ZipRange;

    move-object v9, v3

    move-object v3, v9

    move-object v4, v9

    const/16 v5, 0xa

    const/16 v6, 0xe

    const/4 v7, 0x0

    const/4 v8, 0x6

    invoke-direct {v4, v5, v6, v7, v8}, Landroidx/core/text/util/FindAddress$ZipRange;-><init>(IIII)V

    aput-object v3, v1, v2

    move-object v9, v0

    move-object v0, v9

    move-object v1, v9

    const/16 v2, 0x28

    new-instance v3, Landroidx/core/text/util/FindAddress$ZipRange;

    move-object v9, v3

    move-object v3, v9

    move-object v4, v9

    const/16 v5, 0x2b

    const/16 v6, 0x2d

    const/4 v7, -0x1

    const/4 v8, -0x1

    invoke-direct {v4, v5, v6, v7, v8}, Landroidx/core/text/util/FindAddress$ZipRange;-><init>(IIII)V

    aput-object v3, v1, v2

    move-object v9, v0

    move-object v0, v9

    move-object v1, v9

    const/16 v2, 0x29

    new-instance v3, Landroidx/core/text/util/FindAddress$ZipRange;

    move-object v9, v3

    move-object v3, v9

    move-object v4, v9

    const/16 v5, 0x49

    const/16 v6, 0x4a

    const/4 v7, -0x1

    const/4 v8, -0x1

    invoke-direct {v4, v5, v6, v7, v8}, Landroidx/core/text/util/FindAddress$ZipRange;-><init>(IIII)V

    aput-object v3, v1, v2

    move-object v9, v0

    move-object v0, v9

    move-object v1, v9

    const/16 v2, 0x2a

    new-instance v3, Landroidx/core/text/util/FindAddress$ZipRange;

    move-object v9, v3

    move-object v3, v9

    move-object v4, v9

    const/16 v5, 0x61

    const/16 v6, 0x61

    const/4 v7, -0x1

    const/4 v8, -0x1

    invoke-direct {v4, v5, v6, v7, v8}, Landroidx/core/text/util/FindAddress$ZipRange;-><init>(IIII)V

    aput-object v3, v1, v2

    move-object v9, v0

    move-object v0, v9

    move-object v1, v9

    const/16 v2, 0x2b

    new-instance v3, Landroidx/core/text/util/FindAddress$ZipRange;

    move-object v9, v3

    move-object v3, v9

    move-object v4, v9

    const/16 v5, 0xf

    const/16 v6, 0x13

    const/4 v7, -0x1

    const/4 v8, -0x1

    invoke-direct {v4, v5, v6, v7, v8}, Landroidx/core/text/util/FindAddress$ZipRange;-><init>(IIII)V

    aput-object v3, v1, v2

    move-object v9, v0

    move-object v0, v9

    move-object v1, v9

    const/16 v2, 0x2c

    new-instance v3, Landroidx/core/text/util/FindAddress$ZipRange;

    move-object v9, v3

    move-object v3, v9

    move-object v4, v9

    const/4 v5, 0x6

    const/4 v6, 0x6

    const/4 v7, 0x0

    const/16 v8, 0x9

    invoke-direct {v4, v5, v6, v7, v8}, Landroidx/core/text/util/FindAddress$ZipRange;-><init>(IIII)V

    aput-object v3, v1, v2

    move-object v9, v0

    move-object v0, v9

    move-object v1, v9

    const/16 v2, 0x2d

    new-instance v3, Landroidx/core/text/util/FindAddress$ZipRange;

    move-object v9, v3

    move-object v3, v9

    move-object v4, v9

    const/16 v5, 0x60

    const/16 v6, 0x60

    const/4 v7, -0x1

    const/4 v8, -0x1

    invoke-direct {v4, v5, v6, v7, v8}, Landroidx/core/text/util/FindAddress$ZipRange;-><init>(IIII)V

    aput-object v3, v1, v2

    move-object v9, v0

    move-object v0, v9

    move-object v1, v9

    const/16 v2, 0x2e

    new-instance v3, Landroidx/core/text/util/FindAddress$ZipRange;

    move-object v9, v3

    move-object v3, v9

    move-object v4, v9

    const/4 v5, 0x2

    const/4 v6, 0x2

    const/4 v7, -0x1

    const/4 v8, -0x1

    invoke-direct {v4, v5, v6, v7, v8}, Landroidx/core/text/util/FindAddress$ZipRange;-><init>(IIII)V

    aput-object v3, v1, v2

    move-object v9, v0

    move-object v0, v9

    move-object v1, v9

    const/16 v2, 0x2f

    new-instance v3, Landroidx/core/text/util/FindAddress$ZipRange;

    move-object v9, v3

    move-object v3, v9

    move-object v4, v9

    const/16 v5, 0x1d

    const/16 v6, 0x1d

    const/4 v7, -0x1

    const/4 v8, -0x1

    invoke-direct {v4, v5, v6, v7, v8}, Landroidx/core/text/util/FindAddress$ZipRange;-><init>(IIII)V

    aput-object v3, v1, v2

    move-object v9, v0

    move-object v0, v9

    move-object v1, v9

    const/16 v2, 0x30

    new-instance v3, Landroidx/core/text/util/FindAddress$ZipRange;

    move-object v9, v3

    move-object v3, v9

    move-object v4, v9

    const/16 v5, 0x39

    const/16 v6, 0x39

    const/4 v7, -0x1

    const/4 v8, -0x1

    invoke-direct {v4, v5, v6, v7, v8}, Landroidx/core/text/util/FindAddress$ZipRange;-><init>(IIII)V

    aput-object v3, v1, v2

    move-object v9, v0

    move-object v0, v9

    move-object v1, v9

    const/16 v2, 0x31

    new-instance v3, Landroidx/core/text/util/FindAddress$ZipRange;

    move-object v9, v3

    move-object v3, v9

    move-object v4, v9

    const/16 v5, 0x25

    const/16 v6, 0x26

    const/4 v7, -0x1

    const/4 v8, -0x1

    invoke-direct {v4, v5, v6, v7, v8}, Landroidx/core/text/util/FindAddress$ZipRange;-><init>(IIII)V

    aput-object v3, v1, v2

    move-object v9, v0

    move-object v0, v9

    move-object v1, v9

    const/16 v2, 0x32

    new-instance v3, Landroidx/core/text/util/FindAddress$ZipRange;

    move-object v9, v3

    move-object v3, v9

    move-object v4, v9

    const/16 v5, 0x4b

    const/16 v6, 0x4f

    const/16 v7, 0x57

    const/16 v8, 0x58

    invoke-direct {v4, v5, v6, v7, v8}, Landroidx/core/text/util/FindAddress$ZipRange;-><init>(IIII)V

    aput-object v3, v1, v2

    move-object v9, v0

    move-object v0, v9

    move-object v1, v9

    const/16 v2, 0x33

    new-instance v3, Landroidx/core/text/util/FindAddress$ZipRange;

    move-object v9, v3

    move-object v3, v9

    move-object v4, v9

    const/16 v5, 0x54

    const/16 v6, 0x54

    const/4 v7, -0x1

    const/4 v8, -0x1

    invoke-direct {v4, v5, v6, v7, v8}, Landroidx/core/text/util/FindAddress$ZipRange;-><init>(IIII)V

    aput-object v3, v1, v2

    move-object v9, v0

    move-object v0, v9

    move-object v1, v9

    const/16 v2, 0x34

    new-instance v3, Landroidx/core/text/util/FindAddress$ZipRange;

    move-object v9, v3

    move-object v3, v9

    move-object v4, v9

    const/16 v5, 0x16

    const/16 v6, 0x18

    const/16 v7, 0x14

    const/4 v8, -0x1

    invoke-direct {v4, v5, v6, v7, v8}, Landroidx/core/text/util/FindAddress$ZipRange;-><init>(IIII)V

    aput-object v3, v1, v2

    move-object v9, v0

    move-object v0, v9

    move-object v1, v9

    const/16 v2, 0x35

    new-instance v3, Landroidx/core/text/util/FindAddress$ZipRange;

    move-object v9, v3

    move-object v3, v9

    move-object v4, v9

    const/4 v5, 0x6

    const/16 v6, 0x9

    const/4 v7, -0x1

    const/4 v8, -0x1

    invoke-direct {v4, v5, v6, v7, v8}, Landroidx/core/text/util/FindAddress$ZipRange;-><init>(IIII)V

    aput-object v3, v1, v2

    move-object v9, v0

    move-object v0, v9

    move-object v1, v9

    const/16 v2, 0x36

    new-instance v3, Landroidx/core/text/util/FindAddress$ZipRange;

    move-object v9, v3

    move-object v3, v9

    move-object v4, v9

    const/4 v5, 0x5

    const/4 v6, 0x5

    const/4 v7, -0x1

    const/4 v8, -0x1

    invoke-direct {v4, v5, v6, v7, v8}, Landroidx/core/text/util/FindAddress$ZipRange;-><init>(IIII)V

    aput-object v3, v1, v2

    move-object v9, v0

    move-object v0, v9

    move-object v1, v9

    const/16 v2, 0x37

    new-instance v3, Landroidx/core/text/util/FindAddress$ZipRange;

    move-object v9, v3

    move-object v3, v9

    move-object v4, v9

    const/16 v5, 0x62

    const/16 v6, 0x63

    const/4 v7, -0x1

    const/4 v8, -0x1

    invoke-direct {v4, v5, v6, v7, v8}, Landroidx/core/text/util/FindAddress$ZipRange;-><init>(IIII)V

    aput-object v3, v1, v2

    move-object v9, v0

    move-object v0, v9

    move-object v1, v9

    const/16 v2, 0x38

    new-instance v3, Landroidx/core/text/util/FindAddress$ZipRange;

    move-object v9, v3

    move-object v3, v9

    move-object v4, v9

    const/16 v5, 0x35

    const/16 v6, 0x36

    const/4 v7, -0x1

    const/4 v8, -0x1

    invoke-direct {v4, v5, v6, v7, v8}, Landroidx/core/text/util/FindAddress$ZipRange;-><init>(IIII)V

    aput-object v3, v1, v2

    move-object v9, v0

    move-object v0, v9

    move-object v1, v9

    const/16 v2, 0x39

    new-instance v3, Landroidx/core/text/util/FindAddress$ZipRange;

    move-object v9, v3

    move-object v3, v9

    move-object v4, v9

    const/16 v5, 0x18

    const/16 v6, 0x1a

    const/4 v7, -0x1

    const/4 v8, -0x1

    invoke-direct {v4, v5, v6, v7, v8}, Landroidx/core/text/util/FindAddress$ZipRange;-><init>(IIII)V

    aput-object v3, v1, v2

    move-object v9, v0

    move-object v0, v9

    move-object v1, v9

    const/16 v2, 0x3a

    new-instance v3, Landroidx/core/text/util/FindAddress$ZipRange;

    move-object v9, v3

    move-object v3, v9

    move-object v4, v9

    const/16 v5, 0x52

    const/16 v6, 0x53

    const/4 v7, -0x1

    const/4 v8, -0x1

    invoke-direct {v4, v5, v6, v7, v8}, Landroidx/core/text/util/FindAddress$ZipRange;-><init>(IIII)V

    aput-object v3, v1, v2

    sput-object v0, Landroidx/core/text/util/FindAddress;->sStateZipCodeRanges:[Landroidx/core/text/util/FindAddress$ZipRange;

    .line 152
    const-string/jumbo v0, "[^,*\u2022\t \u00a0\u1680\u2000\u2001\u2002\u2003\u2004\u2005\u2006\u2007\u2008\u2009\u200a\u202f\u205f\u3000\n\u000b\u000c\r\u0085\u2028\u2029]+(?=[,*\u2022\t \u00a0\u1680\u2000\u2001\u2002\u2003\u2004\u2005\u2006\u2007\u2008\u2009\u200a\u202f\u205f\u3000\n\u000b\u000c\r\u0085\u2028\u2029]|$)"

    const/4 v1, 0x2

    .line 153
    invoke-static {v0, v1}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;I)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Landroidx/core/text/util/FindAddress;->sWordRe:Ljava/util/regex/Pattern;

    .line 170
    const-string/jumbo v0, "(?:one|\\d+([a-z](?=[^a-z]|$)|st|nd|rd|th)?)(?:-(?:one|\\d+([a-z](?=[^a-z]|$)|st|nd|rd|th)?))*(?=[,\"\'\t \u00a0\u1680\u2000\u2001\u2002\u2003\u2004\u2005\u2006\u2007\u2008\u2009\u200a\u202f\u205f\u3000\n\u000b\u000c\r\u0085\u2028\u2029]|$)"

    const/4 v1, 0x2

    .line 171
    invoke-static {v0, v1}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;I)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Landroidx/core/text/util/FindAddress;->sHouseNumberRe:Ljava/util/regex/Pattern;

    .line 175
    const-string/jumbo v0, "(?:(ak|alaska)|(al|alabama)|(ar|arkansas)|(as|american[\t \u00a0\u1680\u2000\u2001\u2002\u2003\u2004\u2005\u2006\u2007\u2008\u2009\u200a\u202f\u205f\u3000]+samoa)|(az|arizona)|(ca|california)|(co|colorado)|(ct|connecticut)|(dc|district[\t \u00a0\u1680\u2000\u2001\u2002\u2003\u2004\u2005\u2006\u2007\u2008\u2009\u200a\u202f\u205f\u3000]+of[\t \u00a0\u1680\u2000\u2001\u2002\u2003\u2004\u2005\u2006\u2007\u2008\u2009\u200a\u202f\u205f\u3000]+columbia)|(de|delaware)|(fl|florida)|(fm|federated[\t \u00a0\u1680\u2000\u2001\u2002\u2003\u2004\u2005\u2006\u2007\u2008\u2009\u200a\u202f\u205f\u3000]+states[\t \u00a0\u1680\u2000\u2001\u2002\u2003\u2004\u2005\u2006\u2007\u2008\u2009\u200a\u202f\u205f\u3000]+of[\t \u00a0\u1680\u2000\u2001\u2002\u2003\u2004\u2005\u2006\u2007\u2008\u2009\u200a\u202f\u205f\u3000]+micronesia)|(ga|georgia)|(gu|guam)|(hi|hawaii)|(ia|iowa)|(id|idaho)|(il|illinois)|(in|indiana)|(ks|kansas)|(ky|kentucky)|(la|louisiana)|(ma|massachusetts)|(md|maryland)|(me|maine)|(mh|marshall[\t \u00a0\u1680\u2000\u2001\u2002\u2003\u2004\u2005\u2006\u2007\u2008\u2009\u200a\u202f\u205f\u3000]+islands)|(mi|michigan)|(mn|minnesota)|(mo|missouri)|(mp|northern[\t \u00a0\u1680\u2000\u2001\u2002\u2003\u2004\u2005\u2006\u2007\u2008\u2009\u200a\u202f\u205f\u3000]+mariana[\t \u00a0\u1680\u2000\u2001\u2002\u2003\u2004\u2005\u2006\u2007\u2008\u2009\u200a\u202f\u205f\u3000]+islands)|(ms|mississippi)|(mt|montana)|(nc|north[\t \u00a0\u1680\u2000\u2001\u2002\u2003\u2004\u2005\u2006\u2007\u2008\u2009\u200a\u202f\u205f\u3000]+carolina)|(nd|north[\t \u00a0\u1680\u2000\u2001\u2002\u2003\u2004\u2005\u2006\u2007\u2008\u2009\u200a\u202f\u205f\u3000]+dakota)|(ne|nebraska)|(nh|new[\t \u00a0\u1680\u2000\u2001\u2002\u2003\u2004\u2005\u2006\u2007\u2008\u2009\u200a\u202f\u205f\u3000]+hampshire)|(nj|new[\t \u00a0\u1680\u2000\u2001\u2002\u2003\u2004\u2005\u2006\u2007\u2008\u2009\u200a\u202f\u205f\u3000]+jersey)|(nm|new[\t \u00a0\u1680\u2000\u2001\u2002\u2003\u2004\u2005\u2006\u2007\u2008\u2009\u200a\u202f\u205f\u3000]+mexico)|(nv|nevada)|(ny|new[\t \u00a0\u1680\u2000\u2001\u2002\u2003\u2004\u2005\u2006\u2007\u2008\u2009\u200a\u202f\u205f\u3000]+york)|(oh|ohio)|(ok|oklahoma)|(or|oregon)|(pa|pennsylvania)|(pr|puerto[\t \u00a0\u1680\u2000\u2001\u2002\u2003\u2004\u2005\u2006\u2007\u2008\u2009\u200a\u202f\u205f\u3000]+rico)|(pw|palau)|(ri|rhode[\t \u00a0\u1680\u2000\u2001\u2002\u2003\u2004\u2005\u2006\u2007\u2008\u2009\u200a\u202f\u205f\u3000]+island)|(sc|south[\t \u00a0\u1680\u2000\u2001\u2002\u2003\u2004\u2005\u2006\u2007\u2008\u2009\u200a\u202f\u205f\u3000]+carolina)|(sd|south[\t \u00a0\u1680\u2000\u2001\u2002\u2003\u2004\u2005\u2006\u2007\u2008\u2009\u200a\u202f\u205f\u3000]+dakota)|(tn|tennessee)|(tx|texas)|(ut|utah)|(va|virginia)|(vi|virgin[\t \u00a0\u1680\u2000\u2001\u2002\u2003\u2004\u2005\u2006\u2007\u2008\u2009\u200a\u202f\u205f\u3000]+islands)|(vt|vermont)|(wa|washington)|(wi|wisconsin)|(wv|west[\t \u00a0\u1680\u2000\u2001\u2002\u2003\u2004\u2005\u2006\u2007\u2008\u2009\u200a\u202f\u205f\u3000]+virginia)|(wy|wyoming))(?=[,*\u2022\t \u00a0\u1680\u2000\u2001\u2002\u2003\u2004\u2005\u2006\u2007\u2008\u2009\u200a\u202f\u205f\u3000\n\u000b\u000c\r\u0085\u2028\u2029]|$)"

    const/4 v1, 0x2

    invoke-static {v0, v1}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;I)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Landroidx/core/text/util/FindAddress;->sStateRe:Ljava/util/regex/Pattern;

    .line 238
    const-string/jumbo v0, "(?:alley|annex|arcade|ave[.]?|avenue|alameda|bayou|beach|bend|bluffs?|bottom|boulevard|branch|bridge|brooks?|burgs?|bypass|broadway|camino|camp|canyon|cape|causeway|centers?|circles?|cliffs?|club|common|corners?|course|courts?|coves?|creek|crescent|crest|crossing|crossroad|curve|circulo|dale|dam|divide|drives?|estates?|expressway|extensions?|falls?|ferry|fields?|flats?|fords?|forest|forges?|forks?|fort|freeway|gardens?|gateway|glens?|greens?|groves?|harbors?|haven|heights|highway|hills?|hollow|inlet|islands?|isle|junctions?|keys?|knolls?|lakes?|land|landing|lane|lights?|loaf|locks?|lodge|loop|mall|manors?|meadows?|mews|mills?|mission|motorway|mount|mountains?|neck|orchard|oval|overpass|parks?|parkways?|pass|passage|path|pike|pines?|plains?|plaza|points?|ports?|prairie|privada|radial|ramp|ranch|rapids?|rd[.]?|rest|ridges?|river|roads?|route|row|rue|run|shoals?|shores?|skyway|springs?|spurs?|squares?|station|stravenue|stream|st[.]?|streets?|summit|speedway|terrace|throughway|trace|track|trafficway|trail|tunnel|turnpike|underpass|unions?|valleys?|viaduct|views?|villages?|ville|vista|walks?|wall|ways?|wells?|xing|xrd)(?=[,*\u2022\t \u00a0\u1680\u2000\u2001\u2002\u2003\u2004\u2005\u2006\u2007\u2008\u2009\u200a\u202f\u205f\u3000\n\u000b\u000c\r\u0085\u2028\u2029]|$)"

    const/4 v1, 0x2

    invoke-static {v0, v1}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;I)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Landroidx/core/text/util/FindAddress;->sLocationNameRe:Ljava/util/regex/Pattern;

    .line 264
    const-string/jumbo v0, "(\\d+)(st|nd|rd|th)"

    const/4 v1, 0x2

    .line 265
    invoke-static {v0, v1}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;I)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Landroidx/core/text/util/FindAddress;->sSuffixedNumberRe:Ljava/util/regex/Pattern;

    .line 267
    const-string/jumbo v0, "(?:\\d{5}(?:-\\d{4})?)(?=[,*\u2022\t \u00a0\u1680\u2000\u2001\u2002\u2003\u2004\u2005\u2006\u2007\u2008\u2009\u200a\u202f\u205f\u3000\n\u000b\u000c\r\u0085\u2028\u2029]|$)"

    const/4 v1, 0x2

    .line 268
    invoke-static {v0, v1}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;I)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Landroidx/core/text/util/FindAddress;->sZipCodeRe:Ljava/util/regex/Pattern;

    .line 267
    return-void
.end method

.method private constructor <init>()V
    .locals 2

    .prologue
    .line 517
    move-object v0, p0

    .local v0, "this":Landroidx/core/text/util/FindAddress;
    move-object v1, v0

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    .line 518
    return-void
.end method

.method private static attemptMatch(Ljava/lang/String;Ljava/util/regex/MatchResult;)I
    .locals 16

    .prologue
    .line 401
    move-object/from16 v0, p0

    .local v0, "content":Ljava/lang/String;
    move-object/from16 v1, p1

    .local v1, "houseNumberMatch":Ljava/util/regex/MatchResult;
    const/4 v13, -0x1

    move v2, v13

    .line 402
    .local v2, "restartPos":I
    const/4 v13, -0x1

    move v3, v13

    .line 403
    .local v3, "nonZipMatch":I
    move-object v13, v1

    invoke-interface {v13}, Ljava/util/regex/MatchResult;->end()I

    move-result v13

    move v4, v13

    .line 404
    .local v4, "it":I
    const/4 v13, 0x1

    move v5, v13

    .line 405
    .local v5, "numLines":I
    const/4 v13, 0x1

    move v6, v13

    .line 406
    .local v6, "consecutiveHouseNumbers":Z
    const/4 v13, 0x0

    move v7, v13

    .line 407
    .local v7, "foundLocationName":Z
    const/4 v13, 0x1

    move v8, v13

    .line 408
    .local v8, "wordCount":I
    const-string/jumbo v13, ""

    move-object v9, v13

    .line 410
    .local v9, "lastWord":Ljava/lang/String;
    sget-object v13, Landroidx/core/text/util/FindAddress;->sWordRe:Ljava/util/regex/Pattern;

    move-object v14, v0

    invoke-virtual {v13, v14}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v13

    move-object v10, v13

    .line 412
    .local v10, "matcher":Ljava/util/regex/Matcher;
    :goto_0
    move v13, v4

    move-object v14, v0

    invoke-virtual {v14}, Ljava/lang/String;->length()I

    move-result v14

    if-ge v13, v14, :cond_3

    .line 413
    move-object v13, v10

    move v14, v4

    invoke-virtual {v13, v14}, Ljava/util/regex/Matcher;->find(I)Z

    move-result v13

    if-nez v13, :cond_0

    .line 415
    move-object v13, v0

    invoke-virtual {v13}, Ljava/lang/String;->length()I

    move-result v13

    neg-int v13, v13

    move v0, v13

    .line 490
    .end local v0    # "content":Ljava/lang/String;
    :goto_1
    return v0

    .line 417
    .restart local v0    # "content":Ljava/lang/String;
    :cond_0
    move-object v13, v10

    invoke-virtual {v13}, Ljava/util/regex/Matcher;->end()I

    move-result v13

    move-object v14, v10

    invoke-virtual {v14}, Ljava/util/regex/Matcher;->start()I

    move-result v14

    sub-int/2addr v13, v14

    const/16 v14, 0x19

    if-le v13, v14, :cond_1

    .line 419
    move-object v13, v10

    invoke-virtual {v13}, Ljava/util/regex/Matcher;->end()I

    move-result v13

    neg-int v13, v13

    move v0, v13

    goto :goto_1

    .line 423
    :cond_1
    :goto_2
    move v13, v4

    move-object v14, v10

    invoke-virtual {v14}, Ljava/util/regex/Matcher;->start()I

    move-result v14

    if-ge v13, v14, :cond_2

    .line 424
    const-string/jumbo v13, "\n\u000b\u000c\r\u0085\u2028\u2029"

    move-object v14, v0

    move v15, v4

    add-int/lit8 v4, v4, 0x1

    invoke-virtual {v14, v15}, Ljava/lang/String;->charAt(I)C

    move-result v14

    invoke-virtual {v13, v14}, Ljava/lang/String;->indexOf(I)I

    move-result v13

    const/4 v14, -0x1

    if-eq v13, v14, :cond_1

    add-int/lit8 v5, v5, 0x1

    goto :goto_2

    .line 428
    :cond_2
    move v13, v5

    const/4 v14, 0x5

    if-le v13, v14, :cond_4

    .line 488
    :cond_3
    :goto_3
    move v13, v3

    if-lez v13, :cond_d

    move v13, v3

    move v0, v13

    goto :goto_1

    .line 431
    :cond_4
    add-int/lit8 v8, v8, 0x1

    move v13, v8

    const/16 v14, 0xe

    if-le v13, v14, :cond_5

    goto :goto_3

    .line 433
    :cond_5
    move-object v13, v0

    move v14, v4

    invoke-static {v13, v14}, Landroidx/core/text/util/FindAddress;->matchHouseNumber(Ljava/lang/String;I)Ljava/util/regex/MatchResult;

    move-result-object v13

    if-eqz v13, :cond_8

    .line 434
    move v13, v6

    if-eqz v13, :cond_6

    move v13, v5

    const/4 v14, 0x1

    if-le v13, v14, :cond_6

    .line 437
    move v13, v4

    neg-int v13, v13

    move v0, v13

    goto :goto_1

    .line 440
    :cond_6
    move v13, v2

    const/4 v14, -0x1

    if-ne v13, v14, :cond_7

    move v13, v4

    move v2, v13

    .line 412
    :cond_7
    :goto_4
    move-object v13, v10

    const/4 v14, 0x0

    invoke-virtual {v13, v14}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v13

    move-object v9, v13

    move-object v13, v10

    invoke-virtual {v13}, Ljava/util/regex/Matcher;->end()I

    move-result v13

    move v4, v13

    goto/16 :goto_0

    .line 444
    :cond_8
    const/4 v13, 0x0

    move v6, v13

    .line 446
    move-object v13, v10

    const/4 v14, 0x0

    invoke-virtual {v13, v14}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v13

    invoke-static {v13}, Landroidx/core/text/util/FindAddress;->isValidLocationName(Ljava/lang/String;)Z

    move-result v13

    if-eqz v13, :cond_9

    .line 447
    const/4 v13, 0x1

    move v7, v13

    .line 448
    goto :goto_4

    .line 451
    :cond_9
    move v13, v8

    const/4 v14, 0x5

    if-ne v13, v14, :cond_a

    move v13, v7

    if-nez v13, :cond_a

    .line 453
    move-object v13, v10

    invoke-virtual {v13}, Ljava/util/regex/Matcher;->end()I

    move-result v13

    move v4, v13

    .line 454
    goto :goto_3

    .line 457
    :cond_a
    move v13, v7

    if-eqz v13, :cond_7

    move v13, v8

    const/4 v14, 0x4

    if-le v13, v14, :cond_7

    .line 459
    move-object v13, v0

    move v14, v4

    invoke-static {v13, v14}, Landroidx/core/text/util/FindAddress;->matchState(Ljava/lang/String;I)Ljava/util/regex/MatchResult;

    move-result-object v13

    move-object v11, v13

    .line 460
    .local v11, "stateMatch":Ljava/util/regex/MatchResult;
    move-object v13, v11

    if-eqz v13, :cond_7

    .line 461
    move-object v13, v9

    const-string/jumbo v14, "et"

    invoke-virtual {v13, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_b

    move-object v13, v11

    const/4 v14, 0x0

    invoke-interface {v13, v14}, Ljava/util/regex/MatchResult;->group(I)Ljava/lang/String;

    move-result-object v13

    const-string/jumbo v14, "al"

    invoke-virtual {v13, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_b

    .line 463
    move-object v13, v11

    invoke-interface {v13}, Ljava/util/regex/MatchResult;->end()I

    move-result v13

    move v4, v13

    .line 464
    goto/16 :goto_3

    .line 468
    :cond_b
    sget-object v13, Landroidx/core/text/util/FindAddress;->sWordRe:Ljava/util/regex/Pattern;

    move-object v14, v0

    invoke-virtual {v13, v14}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v13

    move-object v12, v13

    .line 469
    .local v12, "zipMatcher":Ljava/util/regex/Matcher;
    move-object v13, v12

    move-object v14, v11

    invoke-interface {v14}, Ljava/util/regex/MatchResult;->end()I

    move-result v14

    invoke-virtual {v13, v14}, Ljava/util/regex/Matcher;->find(I)Z

    move-result v13

    if-eqz v13, :cond_c

    .line 470
    move-object v13, v12

    const/4 v14, 0x0

    invoke-virtual {v13, v14}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v13

    move-object v14, v11

    invoke-static {v13, v14}, Landroidx/core/text/util/FindAddress;->isValidZipCode(Ljava/lang/String;Ljava/util/regex/MatchResult;)Z

    move-result v13

    if-eqz v13, :cond_7

    .line 471
    move-object v13, v12

    invoke-virtual {v13}, Ljava/util/regex/Matcher;->end()I

    move-result v13

    move v0, v13

    goto/16 :goto_1

    .line 482
    :cond_c
    move-object v13, v11

    invoke-interface {v13}, Ljava/util/regex/MatchResult;->end()I

    move-result v13

    move v3, v13

    goto/16 :goto_4

    .line 490
    .end local v11    # "stateMatch":Ljava/util/regex/MatchResult;
    .end local v12    # "zipMatcher":Ljava/util/regex/Matcher;
    :cond_d
    move v13, v2

    if-lez v13, :cond_e

    move v13, v2

    :goto_5
    neg-int v13, v13

    move v0, v13

    goto/16 :goto_1

    :cond_e
    move v13, v4

    goto :goto_5
.end method

.method private static checkHouseNumber(Ljava/lang/String;)Z
    .locals 8

    .prologue
    .line 272
    move-object v0, p0

    .local v0, "houseNumber":Ljava/lang/String;
    const/4 v5, 0x0

    move v1, v5

    .line 273
    .local v1, "digitCount":I
    const/4 v5, 0x0

    move v2, v5

    .local v2, "i":I
    :goto_0
    move v5, v2

    move-object v6, v0

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v6

    if-ge v5, v6, :cond_1

    .line 274
    move-object v5, v0

    move v6, v2

    invoke-virtual {v5, v6}, Ljava/lang/String;->charAt(I)C

    move-result v5

    invoke-static {v5}, Ljava/lang/Character;->isDigit(C)Z

    move-result v5

    if-eqz v5, :cond_0

    add-int/lit8 v1, v1, 0x1

    .line 273
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 276
    :cond_1
    move v5, v1

    const/4 v6, 0x5

    if-le v5, v6, :cond_2

    const/4 v5, 0x0

    move v0, v5

    .line 297
    .end local v0    # "houseNumber":Ljava/lang/String;
    .end local v2    # "i":I
    :goto_1
    return v0

    .line 279
    .restart local v0    # "houseNumber":Ljava/lang/String;
    .restart local v2    # "i":I
    :cond_2
    sget-object v5, Landroidx/core/text/util/FindAddress;->sSuffixedNumberRe:Ljava/util/regex/Pattern;

    move-object v6, v0

    invoke-virtual {v5, v6}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v5

    move-object v2, v5

    .line 280
    .local v2, "suffixMatcher":Ljava/util/regex/Matcher;
    move-object v5, v2

    invoke-virtual {v5}, Ljava/util/regex/Matcher;->find()Z

    move-result v5

    if-eqz v5, :cond_7

    .line 281
    move-object v5, v2

    const/4 v6, 0x1

    invoke-virtual {v5, v6}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    move v3, v5

    .line 282
    .local v3, "num":I
    move v5, v3

    if-nez v5, :cond_3

    .line 283
    const/4 v5, 0x0

    move v0, v5

    goto :goto_1

    .line 285
    :cond_3
    move-object v5, v2

    const/4 v6, 0x2

    invoke-virtual {v5, v6}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v5

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v5

    move-object v4, v5

    .line 286
    .local v4, "suffix":Ljava/lang/String;
    move v5, v3

    const/16 v6, 0xa

    rem-int/lit8 v5, v5, 0xa

    packed-switch v5, :pswitch_data_0

    .line 294
    move-object v5, v4

    const-string/jumbo v6, "th"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    move v0, v5

    goto :goto_1

    .line 288
    :pswitch_0
    move-object v5, v4

    move v6, v3

    const/16 v7, 0x64

    rem-int/lit8 v6, v6, 0x64

    const/16 v7, 0xb

    if-ne v6, v7, :cond_4

    const-string/jumbo v6, "th"

    :goto_2
    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    move v0, v5

    goto :goto_1

    :cond_4
    const-string/jumbo v6, "st"

    goto :goto_2

    .line 290
    :pswitch_1
    move-object v5, v4

    move v6, v3

    const/16 v7, 0x64

    rem-int/lit8 v6, v6, 0x64

    const/16 v7, 0xc

    if-ne v6, v7, :cond_5

    const-string/jumbo v6, "th"

    :goto_3
    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    move v0, v5

    goto :goto_1

    :cond_5
    const-string/jumbo v6, "nd"

    goto :goto_3

    .line 292
    :pswitch_2
    move-object v5, v4

    move v6, v3

    const/16 v7, 0x64

    rem-int/lit8 v6, v6, 0x64

    const/16 v7, 0xd

    if-ne v6, v7, :cond_6

    const-string/jumbo v6, "th"

    :goto_4
    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    move v0, v5

    goto/16 :goto_1

    :cond_6
    const-string/jumbo v6, "rd"

    goto :goto_4

    .line 297
    .end local v3    # "num":I
    .end local v4    # "suffix":Ljava/lang/String;
    :cond_7
    const/4 v5, 0x1

    move v0, v5

    goto/16 :goto_1

    .line 286
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method static findAddress(Ljava/lang/String;)Ljava/lang/String;
    .locals 7

    .prologue
    .line 500
    move-object v0, p0

    .local v0, "content":Ljava/lang/String;
    sget-object v4, Landroidx/core/text/util/FindAddress;->sHouseNumberRe:Ljava/util/regex/Pattern;

    move-object v5, v0

    invoke-virtual {v4, v5}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v4

    move-object v1, v4

    .line 501
    .local v1, "houseNumberMatcher":Ljava/util/regex/Matcher;
    const/4 v4, 0x0

    move v2, v4

    .line 502
    .local v2, "start":I
    :goto_0
    move-object v4, v1

    move v5, v2

    invoke-virtual {v4, v5}, Ljava/util/regex/Matcher;->find(I)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 503
    move-object v4, v1

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroidx/core/text/util/FindAddress;->checkHouseNumber(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 504
    move-object v4, v1

    invoke-virtual {v4}, Ljava/util/regex/Matcher;->start()I

    move-result v4

    move v2, v4

    .line 505
    move-object v4, v0

    move-object v5, v1

    invoke-static {v4, v5}, Landroidx/core/text/util/FindAddress;->attemptMatch(Ljava/lang/String;Ljava/util/regex/MatchResult;)I

    move-result v4

    move v3, v4

    .line 506
    .local v3, "end":I
    move v4, v3

    if-lez v4, :cond_0

    .line 507
    move-object v4, v0

    move v5, v2

    move v6, v3

    invoke-virtual {v4, v5, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    move-object v0, v4

    .line 514
    .end local v0    # "content":Ljava/lang/String;
    .end local v3    # "end":I
    :goto_1
    return-object v0

    .line 509
    .restart local v0    # "content":Ljava/lang/String;
    .restart local v3    # "end":I
    :cond_0
    move v4, v3

    neg-int v4, v4

    move v2, v4

    .line 510
    goto :goto_0

    .line 511
    .end local v3    # "end":I
    :cond_1
    move-object v4, v1

    invoke-virtual {v4}, Ljava/util/regex/Matcher;->end()I

    move-result v4

    move v2, v4

    goto :goto_0

    .line 514
    :cond_2
    const/4 v4, 0x0

    move-object v0, v4

    goto :goto_1
.end method

.method public static isValidLocationName(Ljava/lang/String;)Z
    .locals 3
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    .prologue
    .line 388
    move-object v0, p0

    .local v0, "location":Ljava/lang/String;
    sget-object v1, Landroidx/core/text/util/FindAddress;->sLocationNameRe:Ljava/util/regex/Pattern;

    move-object v2, v0

    invoke-virtual {v1, v2}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/regex/Matcher;->matches()Z

    move-result v1

    move v0, v1

    .end local v0    # "location":Ljava/lang/String;
    return v0
.end method

.method public static isValidZipCode(Ljava/lang/String;)Z
    .locals 3
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    .prologue
    .line 377
    move-object v0, p0

    .local v0, "zipCode":Ljava/lang/String;
    sget-object v1, Landroidx/core/text/util/FindAddress;->sZipCodeRe:Ljava/util/regex/Pattern;

    move-object v2, v0

    invoke-virtual {v1, v2}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/regex/Matcher;->matches()Z

    move-result v1

    move v0, v1

    .end local v0    # "zipCode":Ljava/lang/String;
    return v0
.end method

.method public static isValidZipCode(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 5
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    .prologue
    .line 366
    move-object v0, p0

    .local v0, "zipCode":Ljava/lang/String;
    move-object v1, p1

    .local v1, "state":Ljava/lang/String;
    move-object v2, v0

    move-object v3, v1

    const/4 v4, 0x0

    invoke-static {v3, v4}, Landroidx/core/text/util/FindAddress;->matchState(Ljava/lang/String;I)Ljava/util/regex/MatchResult;

    move-result-object v3

    invoke-static {v2, v3}, Landroidx/core/text/util/FindAddress;->isValidZipCode(Ljava/lang/String;Ljava/util/regex/MatchResult;)Z

    move-result v2

    move v0, v2

    .end local v0    # "zipCode":Ljava/lang/String;
    return v0
.end method

.method private static isValidZipCode(Ljava/lang/String;Ljava/util/regex/MatchResult;)Z
    .locals 5

    .prologue
    .line 345
    move-object v0, p0

    .local v0, "zipCode":Ljava/lang/String;
    move-object v1, p1

    .local v1, "stateMatch":Ljava/util/regex/MatchResult;
    move-object v3, v1

    if-nez v3, :cond_0

    const/4 v3, 0x0

    move v0, v3

    .line 352
    .end local v0    # "zipCode":Ljava/lang/String;
    :goto_0
    return v0

    .line 347
    .restart local v0    # "zipCode":Ljava/lang/String;
    :cond_0
    move-object v3, v1

    invoke-interface {v3}, Ljava/util/regex/MatchResult;->groupCount()I

    move-result v3

    move v2, v3

    .line 348
    .local v2, "stateIndex":I
    :cond_1
    move v3, v2

    if-lez v3, :cond_2

    .line 349
    move-object v3, v1

    move v4, v2

    add-int/lit8 v2, v2, -0x1

    invoke-interface {v3, v4}, Ljava/util/regex/MatchResult;->group(I)Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_1

    .line 351
    :cond_2
    sget-object v3, Landroidx/core/text/util/FindAddress;->sZipCodeRe:Ljava/util/regex/Pattern;

    move-object v4, v0

    invoke-virtual {v3, v4}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/regex/Matcher;->matches()Z

    move-result v3

    if-eqz v3, :cond_3

    sget-object v3, Landroidx/core/text/util/FindAddress;->sStateZipCodeRanges:[Landroidx/core/text/util/FindAddress$ZipRange;

    move v4, v2

    aget-object v3, v3, v4

    move-object v4, v0

    .line 352
    invoke-virtual {v3, v4}, Landroidx/core/text/util/FindAddress$ZipRange;->matches(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_3

    const/4 v3, 0x1

    :goto_1
    move v0, v3

    goto :goto_0

    :cond_3
    const/4 v3, 0x0

    goto :goto_1
.end method

.method public static matchHouseNumber(Ljava/lang/String;I)Ljava/util/regex/MatchResult;
    .locals 8
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    .prologue
    .line 310
    move-object v0, p0

    .local v0, "content":Ljava/lang/String;
    move v1, p1

    .local v1, "offset":I
    move v4, v1

    if-lez v4, :cond_0

    const-string/jumbo v4, ":,\"\'\t \u00a0\u1680\u2000\u2001\u2002\u2003\u2004\u2005\u2006\u2007\u2008\u2009\u200a\u202f\u205f\u3000\n\u000b\u000c\r\u0085\u2028\u2029"

    move-object v5, v0

    move v6, v1

    const/4 v7, 0x1

    add-int/lit8 v6, v6, -0x1

    invoke-virtual {v5, v6}, Ljava/lang/String;->charAt(I)C

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->indexOf(I)I

    move-result v4

    const/4 v5, -0x1

    if-ne v4, v5, :cond_0

    const/4 v4, 0x0

    move-object v0, v4

    .line 316
    .end local v0    # "content":Ljava/lang/String;
    :goto_0
    return-object v0

    .line 311
    .restart local v0    # "content":Ljava/lang/String;
    :cond_0
    sget-object v4, Landroidx/core/text/util/FindAddress;->sHouseNumberRe:Ljava/util/regex/Pattern;

    move-object v5, v0

    invoke-virtual {v4, v5}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v4

    move v5, v1

    move-object v6, v0

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v6

    invoke-virtual {v4, v5, v6}, Ljava/util/regex/Matcher;->region(II)Ljava/util/regex/Matcher;

    move-result-object v4

    move-object v2, v4

    .line 312
    .local v2, "matcher":Ljava/util/regex/Matcher;
    move-object v4, v2

    invoke-virtual {v4}, Ljava/util/regex/Matcher;->lookingAt()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 313
    move-object v4, v2

    invoke-virtual {v4}, Ljava/util/regex/Matcher;->toMatchResult()Ljava/util/regex/MatchResult;

    move-result-object v4

    move-object v3, v4

    .line 314
    .local v3, "matchResult":Ljava/util/regex/MatchResult;
    move-object v4, v3

    const/4 v5, 0x0

    invoke-interface {v4, v5}, Ljava/util/regex/MatchResult;->group(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroidx/core/text/util/FindAddress;->checkHouseNumber(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1

    move-object v4, v3

    move-object v0, v4

    goto :goto_0

    .line 316
    .end local v3    # "matchResult":Ljava/util/regex/MatchResult;
    :cond_1
    const/4 v4, 0x0

    move-object v0, v4

    goto :goto_0
.end method

.method public static matchState(Ljava/lang/String;I)Ljava/util/regex/MatchResult;
    .locals 7
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    .prologue
    .line 330
    move-object v0, p0

    .local v0, "content":Ljava/lang/String;
    move v1, p1

    .local v1, "offset":I
    move v3, v1

    if-lez v3, :cond_0

    const-string/jumbo v3, ",*\u2022\t \u00a0\u1680\u2000\u2001\u2002\u2003\u2004\u2005\u2006\u2007\u2008\u2009\u200a\u202f\u205f\u3000\n\u000b\u000c\r\u0085\u2028\u2029"

    move-object v4, v0

    move v5, v1

    const/4 v6, 0x1

    add-int/lit8 v5, v5, -0x1

    invoke-virtual {v4, v5}, Ljava/lang/String;->charAt(I)C

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->indexOf(I)I

    move-result v3

    const/4 v4, -0x1

    if-ne v3, v4, :cond_0

    const/4 v3, 0x0

    move-object v0, v3

    .line 332
    .end local v0    # "content":Ljava/lang/String;
    :goto_0
    return-object v0

    .line 331
    .restart local v0    # "content":Ljava/lang/String;
    :cond_0
    sget-object v3, Landroidx/core/text/util/FindAddress;->sStateRe:Ljava/util/regex/Pattern;

    move-object v4, v0

    invoke-virtual {v3, v4}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v3

    move v4, v1

    move-object v5, v0

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    invoke-virtual {v3, v4, v5}, Ljava/util/regex/Matcher;->region(II)Ljava/util/regex/Matcher;

    move-result-object v3

    move-object v2, v3

    .line 332
    .local v2, "stateMatcher":Ljava/util/regex/Matcher;
    move-object v3, v2

    invoke-virtual {v3}, Ljava/util/regex/Matcher;->lookingAt()Z

    move-result v3

    if-eqz v3, :cond_1

    move-object v3, v2

    invoke-virtual {v3}, Ljava/util/regex/Matcher;->toMatchResult()Ljava/util/regex/MatchResult;

    move-result-object v3

    :goto_1
    move-object v0, v3

    goto :goto_0

    :cond_1
    const/4 v3, 0x0

    goto :goto_1
.end method
