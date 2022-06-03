.class public final Lcom/google/appinventor/components/runtime/util/YailNumberToString;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static B8WBXPBCF2jGfUDZZU2zV5EYdqbUBu0lAZ0THCEqYyuE8VACR9dY7rDnwBIqh64T:Ljava/text/DecimalFormat;

.field private static B8WBXPBCF2jGfUDZZU2zV5EYdqbUBu0lAZ0THCEqYyuE8VACR9dY7rDnwBIqh64T:Ljava/util/Locale;

.field private static hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Ljava/text/DecimalFormat;

.field private static hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Ljava/text/DecimalFormatSymbols;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    .line 40
    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    sput-object v0, Lcom/google/appinventor/components/runtime/util/YailNumberToString;->B8WBXPBCF2jGfUDZZU2zV5EYdqbUBu0lAZ0THCEqYyuE8VACR9dY7rDnwBIqh64T:Ljava/util/Locale;

    .line 41
    new-instance v0, Ljava/text/DecimalFormatSymbols;

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    sget-object v2, Lcom/google/appinventor/components/runtime/util/YailNumberToString;->B8WBXPBCF2jGfUDZZU2zV5EYdqbUBu0lAZ0THCEqYyuE8VACR9dY7rDnwBIqh64T:Ljava/util/Locale;

    invoke-direct {v1, v2}, Ljava/text/DecimalFormatSymbols;-><init>(Ljava/util/Locale;)V

    sput-object v0, Lcom/google/appinventor/components/runtime/util/YailNumberToString;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Ljava/text/DecimalFormatSymbols;

    .line 43
    new-instance v0, Ljava/text/DecimalFormat;

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    const-string/jumbo v2, "#####0.0####"

    sget-object v3, Lcom/google/appinventor/components/runtime/util/YailNumberToString;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Ljava/text/DecimalFormatSymbols;

    invoke-direct {v1, v2, v3}, Ljava/text/DecimalFormat;-><init>(Ljava/lang/String;Ljava/text/DecimalFormatSymbols;)V

    sput-object v0, Lcom/google/appinventor/components/runtime/util/YailNumberToString;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Ljava/text/DecimalFormat;

    .line 44
    new-instance v0, Ljava/text/DecimalFormat;

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    const-string/jumbo v2, "0.####E0"

    sget-object v3, Lcom/google/appinventor/components/runtime/util/YailNumberToString;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Ljava/text/DecimalFormatSymbols;

    invoke-direct {v1, v2, v3}, Ljava/text/DecimalFormat;-><init>(Ljava/lang/String;Ljava/text/DecimalFormatSymbols;)V

    sput-object v0, Lcom/google/appinventor/components/runtime/util/YailNumberToString;->B8WBXPBCF2jGfUDZZU2zV5EYdqbUBu0lAZ0THCEqYyuE8VACR9dY7rDnwBIqh64T:Ljava/text/DecimalFormat;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    .line 18
    move-object v0, p0

    move-object v1, v0

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static format(D)Ljava/lang/String;
    .locals 10

    .prologue
    .line 57
    move-wide v0, p0

    move-wide v4, v0

    invoke-static {v4, v5}, Ljava/lang/Double;->isInfinite(D)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 58
    move-wide v4, v0

    const-wide/16 v6, 0x0

    cmpg-double v4, v4, v6

    if-gez v4, :cond_0

    .line 59
    const-string/jumbo v4, "-infinity"

    move-object v0, v4

    .line 72
    :goto_0
    return-object v0

    .line 61
    :cond_0
    const-string/jumbo v4, "+infinity"

    move-object v0, v4

    goto :goto_0

    .line 65
    :cond_1
    move-wide v4, v0

    move-wide v8, v4

    move-wide v4, v8

    move-wide v6, v8

    invoke-static {v6, v7}, Ljava/lang/Math;->rint(D)D

    move-result-wide v6

    cmpl-double v4, v4, v6

    if-nez v4, :cond_2

    .line 66
    move-wide v4, v0

    double-to-long v4, v4

    invoke-static {v4, v5}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v4

    move-object v0, v4

    goto :goto_0

    .line 68
    :cond_2
    move-wide v4, v0

    invoke-static {v4, v5}, Ljava/lang/Math;->abs(D)D

    move-result-wide v4

    move-wide v8, v4

    move-wide v4, v8

    move-wide v6, v8

    .line 69
    move-wide v2, v6

    const-wide v6, 0x412e848000000000L    # 1000000.0

    cmpg-double v4, v4, v6

    if-gez v4, :cond_3

    move-wide v4, v2

    const-wide v6, 0x3eb0c6f7a0b5ed8dL    # 1.0E-6

    cmpl-double v4, v4, v6

    if-lez v4, :cond_3

    .line 70
    sget-object v4, Lcom/google/appinventor/components/runtime/util/YailNumberToString;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Ljava/text/DecimalFormat;

    move-wide v5, v0

    invoke-virtual {v4, v5, v6}, Ljava/text/DecimalFormat;->format(D)Ljava/lang/String;

    move-result-object v4

    move-object v0, v4

    goto :goto_0

    .line 72
    :cond_3
    sget-object v4, Lcom/google/appinventor/components/runtime/util/YailNumberToString;->B8WBXPBCF2jGfUDZZU2zV5EYdqbUBu0lAZ0THCEqYyuE8VACR9dY7rDnwBIqh64T:Ljava/text/DecimalFormat;

    move-wide v5, v0

    invoke-virtual {v4, v5, v6}, Ljava/text/DecimalFormat;->format(D)Ljava/lang/String;

    move-result-object v4

    move-object v0, v4

    goto :goto_0
.end method
