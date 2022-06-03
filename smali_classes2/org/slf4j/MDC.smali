.class public Lorg/slf4j/MDC;
.super Ljava/lang/Object;
.source "MDC.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/slf4j/MDC$MDCCloseable;
    }
.end annotation


# static fields
.field static final NO_STATIC_MDC_BINDER_URL:Ljava/lang/String; = "http://www.slf4j.org/codes.html#no_static_mdc_binder"

.field static final NULL_MDCA_URL:Ljava/lang/String; = "http://www.slf4j.org/codes.html#null_MDCA"

.field static mdcAdapter:Lorg/slf4j/spi/MDCAdapter;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    .line 108
    :try_start_0
    invoke-static {}, Lorg/slf4j/MDC;->bwCompatibleGetMDCAdapterFromBinder()Lorg/slf4j/spi/MDCAdapter;

    move-result-object v2

    sput-object v2, Lorg/slf4j/MDC;->mdcAdapter:Lorg/slf4j/spi/MDCAdapter;
    :try_end_0
    .catch Ljava/lang/NoClassDefFoundError; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 122
    .line 123
    :goto_0
    return-void

    .line 109
    :catch_0
    move-exception v2

    move-object v0, v2

    .line 110
    .local v0, "ncde":Ljava/lang/NoClassDefFoundError;
    new-instance v2, Lorg/slf4j/helpers/NOPMDCAdapter;

    move-object v4, v2

    move-object v2, v4

    move-object v3, v4

    invoke-direct {v3}, Lorg/slf4j/helpers/NOPMDCAdapter;-><init>()V

    sput-object v2, Lorg/slf4j/MDC;->mdcAdapter:Lorg/slf4j/spi/MDCAdapter;

    .line 111
    move-object v2, v0

    invoke-virtual {v2}, Ljava/lang/NoClassDefFoundError;->getMessage()Ljava/lang/String;

    move-result-object v2

    move-object v1, v2

    .line 112
    .local v1, "msg":Ljava/lang/String;
    move-object v2, v1

    if-eqz v2, :cond_0

    move-object v2, v1

    const-string/jumbo v3, "StaticMDCBinder"

    invoke-virtual {v2, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 113
    const-string/jumbo v2, "Failed to load class \"org.slf4j.impl.StaticMDCBinder\"."

    invoke-static {v2}, Lorg/slf4j/helpers/Util;->report(Ljava/lang/String;)V

    .line 114
    const-string/jumbo v2, "Defaulting to no-operation MDCAdapter implementation."

    invoke-static {v2}, Lorg/slf4j/helpers/Util;->report(Ljava/lang/String;)V

    .line 115
    const-string/jumbo v2, "See http://www.slf4j.org/codes.html#no_static_mdc_binder for further details."

    invoke-static {v2}, Lorg/slf4j/helpers/Util;->report(Ljava/lang/String;)V

    .line 122
    goto :goto_0

    .line 117
    :cond_0
    move-object v2, v0

    throw v2

    .line 119
    .end local v0    # "ncde":Ljava/lang/NoClassDefFoundError;
    .end local v1    # "msg":Ljava/lang/String;
    :catch_1
    move-exception v2

    move-object v0, v2

    .line 121
    .local v0, "e":Ljava/lang/Exception;
    const-string/jumbo v2, "MDC binding unsuccessful."

    move-object v3, v0

    invoke-static {v2, v3}, Lorg/slf4j/helpers/Util;->report(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method private constructor <init>()V
    .locals 2

    .prologue
    .line 85
    move-object v0, p0

    .local v0, "this":Lorg/slf4j/MDC;
    move-object v1, v0

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    .line 86
    return-void
.end method

.method private static bwCompatibleGetMDCAdapterFromBinder()Lorg/slf4j/spi/MDCAdapter;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/NoClassDefFoundError;
        }
    .end annotation

    .prologue
    .line 99
    :try_start_0
    invoke-static {}, Lorg/slf4j/impl/StaticMDCBinder;->getSingleton()Lorg/slf4j/impl/StaticMDCBinder;

    move-result-object v1

    invoke-virtual {v1}, Lorg/slf4j/impl/StaticMDCBinder;->getMDCA()Lorg/slf4j/spi/MDCAdapter;
    :try_end_0
    .catch Ljava/lang/NoSuchMethodError; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    move-object v0, v1

    .line 102
    :goto_0
    return-object v0

    .line 100
    :catch_0
    move-exception v1

    move-object v0, v1

    .line 102
    .local v0, "nsme":Ljava/lang/NoSuchMethodError;
    sget-object v1, Lorg/slf4j/impl/StaticMDCBinder;->SINGLETON:Lorg/slf4j/impl/StaticMDCBinder;

    invoke-virtual {v1}, Lorg/slf4j/impl/StaticMDCBinder;->getMDCA()Lorg/slf4j/spi/MDCAdapter;

    move-result-object v1

    move-object v0, v1

    goto :goto_0
.end method

.method public static clear()V
    .locals 4

    .prologue
    .line 231
    sget-object v0, Lorg/slf4j/MDC;->mdcAdapter:Lorg/slf4j/spi/MDCAdapter;

    if-nez v0, :cond_0

    .line 232
    new-instance v0, Ljava/lang/IllegalStateException;

    move-object v3, v0

    move-object v0, v3

    move-object v1, v3

    const-string/jumbo v2, "MDCAdapter cannot be null. See also http://www.slf4j.org/codes.html#null_MDCA"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 234
    :cond_0
    sget-object v0, Lorg/slf4j/MDC;->mdcAdapter:Lorg/slf4j/spi/MDCAdapter;

    invoke-interface {v0}, Lorg/slf4j/spi/MDCAdapter;->clear()V

    .line 235
    return-void
.end method

.method public static get(Ljava/lang/String;)Ljava/lang/String;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .prologue
    .line 196
    move-object v0, p0

    .local v0, "key":Ljava/lang/String;
    move-object v1, v0

    if-nez v1, :cond_0

    .line 197
    new-instance v1, Ljava/lang/IllegalArgumentException;

    move-object v4, v1

    move-object v1, v4

    move-object v2, v4

    const-string/jumbo v3, "key parameter cannot be null"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 200
    :cond_0
    sget-object v1, Lorg/slf4j/MDC;->mdcAdapter:Lorg/slf4j/spi/MDCAdapter;

    if-nez v1, :cond_1

    .line 201
    new-instance v1, Ljava/lang/IllegalStateException;

    move-object v4, v1

    move-object v1, v4

    move-object v2, v4

    const-string/jumbo v3, "MDCAdapter cannot be null. See also http://www.slf4j.org/codes.html#null_MDCA"

    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 203
    :cond_1
    sget-object v1, Lorg/slf4j/MDC;->mdcAdapter:Lorg/slf4j/spi/MDCAdapter;

    move-object v2, v0

    invoke-interface {v1, v2}, Lorg/slf4j/spi/MDCAdapter;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    move-object v0, v1

    .end local v0    # "key":Ljava/lang/String;
    return-object v0
.end method

.method public static getCopyOfContextMap()Ljava/util/Map;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 245
    sget-object v0, Lorg/slf4j/MDC;->mdcAdapter:Lorg/slf4j/spi/MDCAdapter;

    if-nez v0, :cond_0

    .line 246
    new-instance v0, Ljava/lang/IllegalStateException;

    move-object v3, v0

    move-object v0, v3

    move-object v1, v3

    const-string/jumbo v2, "MDCAdapter cannot be null. See also http://www.slf4j.org/codes.html#null_MDCA"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 248
    :cond_0
    sget-object v0, Lorg/slf4j/MDC;->mdcAdapter:Lorg/slf4j/spi/MDCAdapter;

    invoke-interface {v0}, Lorg/slf4j/spi/MDCAdapter;->getCopyOfContextMap()Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method public static getMDCAdapter()Lorg/slf4j/spi/MDCAdapter;
    .locals 1

    .prologue
    .line 274
    sget-object v0, Lorg/slf4j/MDC;->mdcAdapter:Lorg/slf4j/spi/MDCAdapter;

    return-object v0
.end method

.method public static put(Ljava/lang/String;Ljava/lang/String;)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .prologue
    .line 141
    move-object v0, p0

    .local v0, "key":Ljava/lang/String;
    move-object v1, p1

    .local v1, "val":Ljava/lang/String;
    move-object v2, v0

    if-nez v2, :cond_0

    .line 142
    new-instance v2, Ljava/lang/IllegalArgumentException;

    move-object v5, v2

    move-object v2, v5

    move-object v3, v5

    const-string/jumbo v4, "key parameter cannot be null"

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 144
    :cond_0
    sget-object v2, Lorg/slf4j/MDC;->mdcAdapter:Lorg/slf4j/spi/MDCAdapter;

    if-nez v2, :cond_1

    .line 145
    new-instance v2, Ljava/lang/IllegalStateException;

    move-object v5, v2

    move-object v2, v5

    move-object v3, v5

    const-string/jumbo v4, "MDCAdapter cannot be null. See also http://www.slf4j.org/codes.html#null_MDCA"

    invoke-direct {v3, v4}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 147
    :cond_1
    sget-object v2, Lorg/slf4j/MDC;->mdcAdapter:Lorg/slf4j/spi/MDCAdapter;

    move-object v3, v0

    move-object v4, v1

    invoke-interface {v2, v3, v4}, Lorg/slf4j/spi/MDCAdapter;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 148
    return-void
.end method

.method public static putCloseable(Ljava/lang/String;Ljava/lang/String;)Lorg/slf4j/MDC$MDCCloseable;
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .prologue
    .line 179
    move-object v0, p0

    .local v0, "key":Ljava/lang/String;
    move-object v1, p1

    .local v1, "val":Ljava/lang/String;
    move-object v2, v0

    move-object v3, v1

    invoke-static {v2, v3}, Lorg/slf4j/MDC;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 180
    new-instance v2, Lorg/slf4j/MDC$MDCCloseable;

    move-object v6, v2

    move-object v2, v6

    move-object v3, v6

    move-object v4, v0

    const/4 v5, 0x0

    invoke-direct {v3, v4, v5}, Lorg/slf4j/MDC$MDCCloseable;-><init>(Ljava/lang/String;Lorg/slf4j/MDC$1;)V

    move-object v0, v2

    .end local v0    # "key":Ljava/lang/String;
    return-object v0
.end method

.method public static remove(Ljava/lang/String;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .prologue
    .line 217
    move-object v0, p0

    .local v0, "key":Ljava/lang/String;
    move-object v1, v0

    if-nez v1, :cond_0

    .line 218
    new-instance v1, Ljava/lang/IllegalArgumentException;

    move-object v4, v1

    move-object v1, v4

    move-object v2, v4

    const-string/jumbo v3, "key parameter cannot be null"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 221
    :cond_0
    sget-object v1, Lorg/slf4j/MDC;->mdcAdapter:Lorg/slf4j/spi/MDCAdapter;

    if-nez v1, :cond_1

    .line 222
    new-instance v1, Ljava/lang/IllegalStateException;

    move-object v4, v1

    move-object v1, v4

    move-object v2, v4

    const-string/jumbo v3, "MDCAdapter cannot be null. See also http://www.slf4j.org/codes.html#null_MDCA"

    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 224
    :cond_1
    sget-object v1, Lorg/slf4j/MDC;->mdcAdapter:Lorg/slf4j/spi/MDCAdapter;

    move-object v2, v0

    invoke-interface {v1, v2}, Lorg/slf4j/spi/MDCAdapter;->remove(Ljava/lang/String;)V

    .line 225
    return-void
.end method

.method public static setContextMap(Ljava/util/Map;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 261
    move-object v0, p0

    .local v0, "contextMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    sget-object v1, Lorg/slf4j/MDC;->mdcAdapter:Lorg/slf4j/spi/MDCAdapter;

    if-nez v1, :cond_0

    .line 262
    new-instance v1, Ljava/lang/IllegalStateException;

    move-object v4, v1

    move-object v1, v4

    move-object v2, v4

    const-string/jumbo v3, "MDCAdapter cannot be null. See also http://www.slf4j.org/codes.html#null_MDCA"

    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 264
    :cond_0
    sget-object v1, Lorg/slf4j/MDC;->mdcAdapter:Lorg/slf4j/spi/MDCAdapter;

    move-object v2, v0

    invoke-interface {v1, v2}, Lorg/slf4j/spi/MDCAdapter;->setContextMap(Ljava/util/Map;)V

    .line 265
    return-void
.end method
