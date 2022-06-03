.class public final Lorg/slf4j/LoggerFactory;
.super Ljava/lang/Object;
.source "LoggerFactory.java"


# static fields
.field private static final API_COMPATIBILITY_LIST:[Ljava/lang/String;

.field static final CODES_PREFIX:Ljava/lang/String; = "http://www.slf4j.org/codes.html"

.field static DETECT_LOGGER_NAME_MISMATCH:Z = false

.field static final DETECT_LOGGER_NAME_MISMATCH_PROPERTY:Ljava/lang/String; = "slf4j.detectLoggerNameMismatch"

.field static final FAILED_INITIALIZATION:I = 0x2

.field static volatile INITIALIZATION_STATE:I = 0x0

.field static final JAVA_VENDOR_PROPERTY:Ljava/lang/String; = "java.vendor.url"

.field static final LOGGER_NAME_MISMATCH_URL:Ljava/lang/String; = "http://www.slf4j.org/codes.html#loggerNameMismatch"

.field static final MULTIPLE_BINDINGS_URL:Ljava/lang/String; = "http://www.slf4j.org/codes.html#multiple_bindings"

.field static final NOP_FALLBACK_FACTORY:Lorg/slf4j/helpers/NOPLoggerFactory;

.field static final NOP_FALLBACK_INITIALIZATION:I = 0x4

.field static final NO_STATICLOGGERBINDER_URL:Ljava/lang/String; = "http://www.slf4j.org/codes.html#StaticLoggerBinder"

.field static final NULL_LF_URL:Ljava/lang/String; = "http://www.slf4j.org/codes.html#null_LF"

.field static final ONGOING_INITIALIZATION:I = 0x1

.field static final REPLAY_URL:Ljava/lang/String; = "http://www.slf4j.org/codes.html#replay"

.field private static STATIC_LOGGER_BINDER_PATH:Ljava/lang/String; = null

.field static final SUBSTITUTE_LOGGER_URL:Ljava/lang/String; = "http://www.slf4j.org/codes.html#substituteLogger"

.field static final SUBST_FACTORY:Lorg/slf4j/helpers/SubstituteLoggerFactory;

.field static final SUCCESSFUL_INITIALIZATION:I = 0x3

.field static final UNINITIALIZED:I = 0x0

.field static final UNSUCCESSFUL_INIT_MSG:Ljava/lang/String; = "org.slf4j.LoggerFactory in failed state. Original exception was thrown EARLIER. See also http://www.slf4j.org/codes.html#unsuccessfulInit"

.field static final UNSUCCESSFUL_INIT_URL:Ljava/lang/String; = "http://www.slf4j.org/codes.html#unsuccessfulInit"

.field static final VERSION_MISMATCH:Ljava/lang/String; = "http://www.slf4j.org/codes.html#version_mismatch"


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    .line 85
    const/4 v0, 0x0

    sput v0, Lorg/slf4j/LoggerFactory;->INITIALIZATION_STATE:I

    .line 86
    new-instance v0, Lorg/slf4j/helpers/SubstituteLoggerFactory;

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    invoke-direct {v1}, Lorg/slf4j/helpers/SubstituteLoggerFactory;-><init>()V

    sput-object v0, Lorg/slf4j/LoggerFactory;->SUBST_FACTORY:Lorg/slf4j/helpers/SubstituteLoggerFactory;

    .line 87
    new-instance v0, Lorg/slf4j/helpers/NOPLoggerFactory;

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    invoke-direct {v1}, Lorg/slf4j/helpers/NOPLoggerFactory;-><init>()V

    sput-object v0, Lorg/slf4j/LoggerFactory;->NOP_FALLBACK_FACTORY:Lorg/slf4j/helpers/NOPLoggerFactory;

    .line 93
    const-string/jumbo v0, "slf4j.detectLoggerNameMismatch"

    invoke-static {v0}, Lorg/slf4j/helpers/Util;->safeGetBooleanSystemProperty(Ljava/lang/String;)Z

    move-result v0

    sput-boolean v0, Lorg/slf4j/LoggerFactory;->DETECT_LOGGER_NAME_MISMATCH:Z

    .line 102
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/String;

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    const/4 v2, 0x0

    const-string/jumbo v3, "1.6"

    aput-object v3, v1, v2

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    const/4 v2, 0x1

    const-string/jumbo v3, "1.7"

    aput-object v3, v1, v2

    sput-object v0, Lorg/slf4j/LoggerFactory;->API_COMPATIBILITY_LIST:[Ljava/lang/String;

    .line 295
    const-string/jumbo v0, "org/slf4j/impl/StaticLoggerBinder.class"

    sput-object v0, Lorg/slf4j/LoggerFactory;->STATIC_LOGGER_BINDER_PATH:Ljava/lang/String;

    return-void
.end method

.method private constructor <init>()V
    .locals 2

    .prologue
    .line 105
    move-object v0, p0

    .local v0, "this":Lorg/slf4j/LoggerFactory;
    move-object v1, v0

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    .line 106
    return-void
.end method

.method private static final bind()V
    .locals 8

    .prologue
    .line 142
    const/4 v3, 0x0

    move-object v0, v3

    .line 145
    .local v0, "staticLoggerBinderPathSet":Ljava/util/Set;, "Ljava/util/Set<Ljava/net/URL;>;"
    :try_start_0
    invoke-static {}, Lorg/slf4j/LoggerFactory;->isAndroid()Z

    move-result v3

    if-nez v3, :cond_0

    .line 146
    invoke-static {}, Lorg/slf4j/LoggerFactory;->findPossibleStaticLoggerBinderPathSet()Ljava/util/Set;

    move-result-object v3

    move-object v0, v3

    .line 147
    move-object v3, v0

    invoke-static {v3}, Lorg/slf4j/LoggerFactory;->reportMultipleBindingAmbiguity(Ljava/util/Set;)V

    .line 150
    :cond_0
    invoke-static {}, Lorg/slf4j/impl/StaticLoggerBinder;->getSingleton()Lorg/slf4j/impl/StaticLoggerBinder;

    move-result-object v3

    .line 151
    const/4 v3, 0x3

    sput v3, Lorg/slf4j/LoggerFactory;->INITIALIZATION_STATE:I

    .line 152
    move-object v3, v0

    invoke-static {v3}, Lorg/slf4j/LoggerFactory;->reportActualBinding(Ljava/util/Set;)V
    :try_end_0
    .catch Ljava/lang/NoClassDefFoundError; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NoSuchMethodError; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 177
    invoke-static {}, Lorg/slf4j/LoggerFactory;->postBindCleanUp()V

    .line 178
    .line 179
    .end local v0    # "staticLoggerBinderPathSet":Ljava/util/Set;, "Ljava/util/Set<Ljava/net/URL;>;"
    :goto_0
    return-void

    .line 153
    .restart local v0    # "staticLoggerBinderPathSet":Ljava/util/Set;, "Ljava/util/Set<Ljava/net/URL;>;"
    :catch_0
    move-exception v3

    move-object v0, v3

    .line 154
    .local v0, "ncde":Ljava/lang/NoClassDefFoundError;
    move-object v3, v0

    :try_start_1
    invoke-virtual {v3}, Ljava/lang/NoClassDefFoundError;->getMessage()Ljava/lang/String;

    move-result-object v3

    move-object v1, v3

    .line 155
    .local v1, "msg":Ljava/lang/String;
    move-object v3, v1

    invoke-static {v3}, Lorg/slf4j/LoggerFactory;->messageContainsOrgSlf4jImplStaticLoggerBinder(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 156
    const/4 v3, 0x4

    sput v3, Lorg/slf4j/LoggerFactory;->INITIALIZATION_STATE:I

    .line 157
    const-string/jumbo v3, "Failed to load class \"org.slf4j.impl.StaticLoggerBinder\"."

    invoke-static {v3}, Lorg/slf4j/helpers/Util;->report(Ljava/lang/String;)V

    .line 158
    const-string/jumbo v3, "Defaulting to no-operation (NOP) logger implementation"

    invoke-static {v3}, Lorg/slf4j/helpers/Util;->report(Ljava/lang/String;)V

    .line 159
    const-string/jumbo v3, "See http://www.slf4j.org/codes.html#StaticLoggerBinder for further details."

    invoke-static {v3}, Lorg/slf4j/helpers/Util;->report(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 177
    invoke-static {}, Lorg/slf4j/LoggerFactory;->postBindCleanUp()V

    .line 178
    goto :goto_0

    .line 161
    :cond_1
    move-object v3, v0

    :try_start_2
    invoke-static {v3}, Lorg/slf4j/LoggerFactory;->failedBinding(Ljava/lang/Throwable;)V

    .line 162
    move-object v3, v0

    throw v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 177
    .end local v1    # "msg":Ljava/lang/String;
    .local v0, "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v3

    move-object v2, v3

    invoke-static {}, Lorg/slf4j/LoggerFactory;->postBindCleanUp()V

    move-object v3, v2

    throw v3

    .line 164
    .local v0, "staticLoggerBinderPathSet":Ljava/util/Set;, "Ljava/util/Set<Ljava/net/URL;>;"
    :catch_1
    move-exception v3

    move-object v0, v3

    .line 165
    .local v0, "nsme":Ljava/lang/NoSuchMethodError;
    move-object v3, v0

    :try_start_3
    invoke-virtual {v3}, Ljava/lang/NoSuchMethodError;->getMessage()Ljava/lang/String;

    move-result-object v3

    move-object v1, v3

    .line 166
    .restart local v1    # "msg":Ljava/lang/String;
    move-object v3, v1

    if-eqz v3, :cond_2

    move-object v3, v1

    const-string/jumbo v4, "org.slf4j.impl.StaticLoggerBinder.getSingleton()"

    invoke-virtual {v3, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 167
    const/4 v3, 0x2

    sput v3, Lorg/slf4j/LoggerFactory;->INITIALIZATION_STATE:I

    .line 168
    const-string/jumbo v3, "slf4j-api 1.6.x (or later) is incompatible with this binding."

    invoke-static {v3}, Lorg/slf4j/helpers/Util;->report(Ljava/lang/String;)V

    .line 169
    const-string/jumbo v3, "Your binding is version 1.5.5 or earlier."

    invoke-static {v3}, Lorg/slf4j/helpers/Util;->report(Ljava/lang/String;)V

    .line 170
    const-string/jumbo v3, "Upgrade your binding to version 1.6.x."

    invoke-static {v3}, Lorg/slf4j/helpers/Util;->report(Ljava/lang/String;)V

    .line 172
    :cond_2
    move-object v3, v0

    throw v3

    .line 173
    .end local v1    # "msg":Ljava/lang/String;
    .local v0, "staticLoggerBinderPathSet":Ljava/util/Set;, "Ljava/util/Set<Ljava/net/URL;>;"
    :catch_2
    move-exception v3

    move-object v0, v3

    .line 174
    .local v0, "e":Ljava/lang/Exception;
    move-object v3, v0

    invoke-static {v3}, Lorg/slf4j/LoggerFactory;->failedBinding(Ljava/lang/Throwable;)V

    .line 175
    new-instance v3, Ljava/lang/IllegalStateException;

    move-object v7, v3

    move-object v3, v7

    move-object v4, v7

    const-string/jumbo v5, "Unexpected initialization failure"

    move-object v6, v0

    invoke-direct {v4, v5, v6}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v3
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0
.end method

.method private static emitReplayOrSubstituionWarning(Lorg/slf4j/event/SubstituteLoggingEvent;I)V
    .locals 3

    .prologue
    .line 224
    move-object v0, p0

    .local v0, "event":Lorg/slf4j/event/SubstituteLoggingEvent;
    move v1, p1

    .local v1, "queueSize":I
    move-object v2, v0

    invoke-virtual {v2}, Lorg/slf4j/event/SubstituteLoggingEvent;->getLogger()Lorg/slf4j/helpers/SubstituteLogger;

    move-result-object v2

    invoke-virtual {v2}, Lorg/slf4j/helpers/SubstituteLogger;->isDelegateEventAware()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 225
    move v2, v1

    invoke-static {v2}, Lorg/slf4j/LoggerFactory;->emitReplayWarning(I)V

    .line 231
    :goto_0
    return-void

    .line 226
    :cond_0
    move-object v2, v0

    invoke-virtual {v2}, Lorg/slf4j/event/SubstituteLoggingEvent;->getLogger()Lorg/slf4j/helpers/SubstituteLogger;

    move-result-object v2

    invoke-virtual {v2}, Lorg/slf4j/helpers/SubstituteLogger;->isDelegateNOP()Z

    move-result v2

    if-eqz v2, :cond_1

    goto :goto_0

    .line 229
    :cond_1
    invoke-static {}, Lorg/slf4j/LoggerFactory;->emitSubstitutionWarning()V

    goto :goto_0
.end method

.method private static emitReplayWarning(I)V
    .locals 4

    .prologue
    .line 261
    move v0, p0

    .local v0, "eventCount":I
    new-instance v1, Ljava/lang/StringBuilder;

    move-object v3, v1

    move-object v1, v3

    move-object v2, v3

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "A number ("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    move v2, v0

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ") of logging calls during the initialization phase have been intercepted and are"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lorg/slf4j/helpers/Util;->report(Ljava/lang/String;)V

    .line 262
    const-string/jumbo v1, "now being replayed. These are subject to the filtering rules of the underlying logging system."

    invoke-static {v1}, Lorg/slf4j/helpers/Util;->report(Ljava/lang/String;)V

    .line 263
    const-string/jumbo v1, "See also http://www.slf4j.org/codes.html#replay"

    invoke-static {v1}, Lorg/slf4j/helpers/Util;->report(Ljava/lang/String;)V

    .line 264
    return-void
.end method

.method private static emitSubstitutionWarning()V
    .locals 1

    .prologue
    .line 253
    const-string/jumbo v0, "The following set of substitute loggers may have been accessed"

    invoke-static {v0}, Lorg/slf4j/helpers/Util;->report(Ljava/lang/String;)V

    .line 254
    const-string/jumbo v0, "during the initialization phase. Logging calls during this"

    invoke-static {v0}, Lorg/slf4j/helpers/Util;->report(Ljava/lang/String;)V

    .line 255
    const-string/jumbo v0, "phase were not honored. However, subsequent logging calls to these"

    invoke-static {v0}, Lorg/slf4j/helpers/Util;->report(Ljava/lang/String;)V

    .line 256
    const-string/jumbo v0, "loggers will work as normally expected."

    invoke-static {v0}, Lorg/slf4j/helpers/Util;->report(Ljava/lang/String;)V

    .line 257
    const-string/jumbo v0, "See also http://www.slf4j.org/codes.html#substituteLogger"

    invoke-static {v0}, Lorg/slf4j/helpers/Util;->report(Ljava/lang/String;)V

    .line 258
    return-void
.end method

.method static failedBinding(Ljava/lang/Throwable;)V
    .locals 3

    .prologue
    .line 200
    move-object v0, p0

    .local v0, "t":Ljava/lang/Throwable;
    const/4 v1, 0x2

    sput v1, Lorg/slf4j/LoggerFactory;->INITIALIZATION_STATE:I

    .line 201
    const-string/jumbo v1, "Failed to instantiate SLF4J LoggerFactory"

    move-object v2, v0

    invoke-static {v1, v2}, Lorg/slf4j/helpers/Util;->report(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 202
    return-void
.end method

.method static findPossibleStaticLoggerBinderPathSet()Ljava/util/Set;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<",
            "Ljava/net/URL;",
            ">;"
        }
    .end annotation

    .prologue
    .line 301
    new-instance v4, Ljava/util/LinkedHashSet;

    move-object v6, v4

    move-object v4, v6

    move-object v5, v6

    invoke-direct {v5}, Ljava/util/LinkedHashSet;-><init>()V

    move-object v0, v4

    .line 303
    .local v0, "staticLoggerBinderPathSet":Ljava/util/Set;, "Ljava/util/Set<Ljava/net/URL;>;"
    :try_start_0
    const-class v4, Lorg/slf4j/LoggerFactory;

    invoke-virtual {v4}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v4

    move-object v1, v4

    .line 305
    .local v1, "loggerFactoryClassLoader":Ljava/lang/ClassLoader;
    move-object v4, v1

    if-nez v4, :cond_0

    .line 306
    sget-object v4, Lorg/slf4j/LoggerFactory;->STATIC_LOGGER_BINDER_PATH:Ljava/lang/String;

    invoke-static {v4}, Ljava/lang/ClassLoader;->getSystemResources(Ljava/lang/String;)Ljava/util/Enumeration;

    move-result-object v4

    move-object v2, v4

    .line 310
    .local v2, "paths":Ljava/util/Enumeration;, "Ljava/util/Enumeration<Ljava/net/URL;>;"
    :goto_0
    move-object v4, v2

    invoke-interface {v4}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 311
    move-object v4, v2

    invoke-interface {v4}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/net/URL;

    move-object v3, v4

    .line 312
    .local v3, "path":Ljava/net/URL;
    move-object v4, v0

    move-object v5, v3

    invoke-interface {v4, v5}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    move-result v4

    .line 313
    goto :goto_0

    .line 308
    .end local v2    # "paths":Ljava/util/Enumeration;, "Ljava/util/Enumeration<Ljava/net/URL;>;"
    .end local v3    # "path":Ljava/net/URL;
    :cond_0
    move-object v4, v1

    sget-object v5, Lorg/slf4j/LoggerFactory;->STATIC_LOGGER_BINDER_PATH:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/ClassLoader;->getResources(Ljava/lang/String;)Ljava/util/Enumeration;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v4

    move-object v2, v4

    .restart local v2    # "paths":Ljava/util/Enumeration;, "Ljava/util/Enumeration<Ljava/net/URL;>;"
    goto :goto_0

    .line 316
    .line 317
    .end local v1    # "loggerFactoryClassLoader":Ljava/lang/ClassLoader;
    .end local v2    # "paths":Ljava/util/Enumeration;, "Ljava/util/Enumeration<Ljava/net/URL;>;"
    :cond_1
    :goto_1
    move-object v4, v0

    move-object v0, v4

    .end local v0    # "staticLoggerBinderPathSet":Ljava/util/Set;, "Ljava/util/Set<Ljava/net/URL;>;"
    return-object v0

    .line 314
    .restart local v0    # "staticLoggerBinderPathSet":Ljava/util/Set;, "Ljava/util/Set<Ljava/net/URL;>;"
    :catch_0
    move-exception v4

    move-object v1, v4

    .line 315
    .local v1, "ioe":Ljava/io/IOException;
    const-string/jumbo v4, "Error getting resources from path"

    move-object v5, v1

    invoke-static {v4, v5}, Lorg/slf4j/helpers/Util;->report(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1
.end method

.method private static fixSubstituteLoggers()V
    .locals 8

    .prologue
    .line 189
    sget-object v5, Lorg/slf4j/LoggerFactory;->SUBST_FACTORY:Lorg/slf4j/helpers/SubstituteLoggerFactory;

    move-object v7, v5

    move-object v5, v7

    move-object v6, v7

    move-object v0, v6

    monitor-enter v5

    .line 190
    :try_start_0
    sget-object v5, Lorg/slf4j/LoggerFactory;->SUBST_FACTORY:Lorg/slf4j/helpers/SubstituteLoggerFactory;

    invoke-virtual {v5}, Lorg/slf4j/helpers/SubstituteLoggerFactory;->postInitialization()V

    .line 191
    sget-object v5, Lorg/slf4j/LoggerFactory;->SUBST_FACTORY:Lorg/slf4j/helpers/SubstituteLoggerFactory;

    invoke-virtual {v5}, Lorg/slf4j/helpers/SubstituteLoggerFactory;->getLoggers()Ljava/util/List;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    move-object v1, v5

    .local v2, "substLogger":Lorg/slf4j/helpers/SubstituteLogger;
    .local v3, "logger":Lorg/slf4j/Logger;
    :goto_0
    move-object v5, v1

    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_0

    move-object v5, v1

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lorg/slf4j/helpers/SubstituteLogger;

    move-object v2, v5

    .line 192
    move-object v5, v2

    invoke-virtual {v5}, Lorg/slf4j/helpers/SubstituteLogger;->getName()Ljava/lang/String;

    .end local v3    # "logger":Lorg/slf4j/Logger;
    move-result-object v5

    invoke-static {v5}, Lorg/slf4j/LoggerFactory;->getLogger(Ljava/lang/String;)Lorg/slf4j/Logger;

    move-result-object v5

    move-object v3, v5

    .line 193
    .restart local v3    # "logger":Lorg/slf4j/Logger;
    move-object v5, v2

    move-object v6, v3

    invoke-virtual {v5, v6}, Lorg/slf4j/helpers/SubstituteLogger;->setDelegate(Lorg/slf4j/Logger;)V

    .line 194
    goto :goto_0

    .line 195
    :cond_0
    move-object v5, v0

    monitor-exit v5

    .line 197
    return-void

    .line 195
    .end local v3    # "logger":Lorg/slf4j/Logger;
    :catchall_0
    move-exception v5

    move-object v4, v5

    move-object v5, v0

    monitor-exit v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object v5, v4

    throw v5
.end method

.method public static getILoggerFactory()Lorg/slf4j/ILoggerFactory;
    .locals 6

    .prologue
    .line 413
    sget v2, Lorg/slf4j/LoggerFactory;->INITIALIZATION_STATE:I

    if-nez v2, :cond_1

    .line 414
    const-class v2, Lorg/slf4j/LoggerFactory;

    move-object v5, v2

    move-object v2, v5

    move-object v3, v5

    move-object v0, v3

    monitor-enter v2

    .line 415
    :try_start_0
    sget v2, Lorg/slf4j/LoggerFactory;->INITIALIZATION_STATE:I

    if-nez v2, :cond_0

    .line 416
    const/4 v2, 0x1

    sput v2, Lorg/slf4j/LoggerFactory;->INITIALIZATION_STATE:I

    .line 417
    invoke-static {}, Lorg/slf4j/LoggerFactory;->performInitialization()V

    .line 419
    :cond_0
    move-object v2, v0

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 421
    :cond_1
    sget v2, Lorg/slf4j/LoggerFactory;->INITIALIZATION_STATE:I

    packed-switch v2, :pswitch_data_0

    .line 433
    new-instance v2, Ljava/lang/IllegalStateException;

    move-object v5, v2

    move-object v2, v5

    move-object v3, v5

    const-string/jumbo v4, "Unreachable code"

    invoke-direct {v3, v4}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 419
    :catchall_0
    move-exception v2

    move-object v1, v2

    move-object v2, v0

    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-object v2, v1

    throw v2

    .line 423
    :pswitch_0
    invoke-static {}, Lorg/slf4j/impl/StaticLoggerBinder;->getSingleton()Lorg/slf4j/impl/StaticLoggerBinder;

    move-result-object v2

    invoke-virtual {v2}, Lorg/slf4j/impl/StaticLoggerBinder;->getLoggerFactory()Lorg/slf4j/ILoggerFactory;

    move-result-object v2

    move-object v0, v2

    .line 431
    :goto_0
    return-object v0

    .line 425
    :pswitch_1
    sget-object v2, Lorg/slf4j/LoggerFactory;->NOP_FALLBACK_FACTORY:Lorg/slf4j/helpers/NOPLoggerFactory;

    move-object v0, v2

    goto :goto_0

    .line 427
    :pswitch_2
    new-instance v2, Ljava/lang/IllegalStateException;

    move-object v5, v2

    move-object v2, v5

    move-object v3, v5

    const-string/jumbo v4, "org.slf4j.LoggerFactory in failed state. Original exception was thrown EARLIER. See also http://www.slf4j.org/codes.html#unsuccessfulInit"

    invoke-direct {v3, v4}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 431
    :pswitch_3
    sget-object v2, Lorg/slf4j/LoggerFactory;->SUBST_FACTORY:Lorg/slf4j/helpers/SubstituteLoggerFactory;

    move-object v0, v2

    goto :goto_0

    .line 421
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_3
        :pswitch_2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public static getLogger(Ljava/lang/Class;)Lorg/slf4j/Logger;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;)",
            "Lorg/slf4j/Logger;"
        }
    .end annotation

    .prologue
    .line 388
    move-object v0, p0

    .local v0, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    move-object v3, v0

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lorg/slf4j/LoggerFactory;->getLogger(Ljava/lang/String;)Lorg/slf4j/Logger;

    move-result-object v3

    move-object v1, v3

    .line 389
    .local v1, "logger":Lorg/slf4j/Logger;
    sget-boolean v3, Lorg/slf4j/LoggerFactory;->DETECT_LOGGER_NAME_MISMATCH:Z

    if-eqz v3, :cond_0

    .line 390
    invoke-static {}, Lorg/slf4j/helpers/Util;->getCallingClass()Ljava/lang/Class;

    move-result-object v3

    move-object v2, v3

    .line 391
    .local v2, "autoComputedCallingClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    move-object v3, v2

    if-eqz v3, :cond_0

    move-object v3, v0

    move-object v4, v2

    invoke-static {v3, v4}, Lorg/slf4j/LoggerFactory;->nonMatchingClasses(Ljava/lang/Class;Ljava/lang/Class;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 392
    const-string/jumbo v3, "Detected logger name mismatch. Given name: \"%s\"; computed name: \"%s\"."

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    move-object v8, v4

    move-object v4, v8

    move-object v5, v8

    const/4 v6, 0x0

    move-object v7, v1

    invoke-interface {v7}, Lorg/slf4j/Logger;->getName()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v5, v6

    move-object v8, v4

    move-object v4, v8

    move-object v5, v8

    const/4 v6, 0x1

    move-object v7, v2

    .line 393
    invoke-virtual {v7}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v5, v6

    .line 392
    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lorg/slf4j/helpers/Util;->report(Ljava/lang/String;)V

    .line 394
    const-string/jumbo v3, "See http://www.slf4j.org/codes.html#loggerNameMismatch for an explanation"

    invoke-static {v3}, Lorg/slf4j/helpers/Util;->report(Ljava/lang/String;)V

    .line 397
    .end local v2    # "autoComputedCallingClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :cond_0
    move-object v3, v1

    move-object v0, v3

    .end local v0    # "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    return-object v0
.end method

.method public static getLogger(Ljava/lang/String;)Lorg/slf4j/Logger;
    .locals 4

    .prologue
    .line 362
    move-object v0, p0

    .local v0, "name":Ljava/lang/String;
    invoke-static {}, Lorg/slf4j/LoggerFactory;->getILoggerFactory()Lorg/slf4j/ILoggerFactory;

    move-result-object v2

    move-object v1, v2

    .line 363
    .local v1, "iLoggerFactory":Lorg/slf4j/ILoggerFactory;
    move-object v2, v1

    move-object v3, v0

    invoke-interface {v2, v3}, Lorg/slf4j/ILoggerFactory;->getLogger(Ljava/lang/String;)Lorg/slf4j/Logger;

    move-result-object v2

    move-object v0, v2

    .end local v0    # "name":Ljava/lang/String;
    return-object v0
.end method

.method private static isAmbiguousStaticLoggerBinderPathSet(Ljava/util/Set;)Z
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set",
            "<",
            "Ljava/net/URL;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .line 321
    move-object v0, p0

    .local v0, "binderPathSet":Ljava/util/Set;, "Ljava/util/Set<Ljava/net/URL;>;"
    move-object v1, v0

    invoke-interface {v1}, Ljava/util/Set;->size()I

    move-result v1

    const/4 v2, 0x1

    if-le v1, v2, :cond_0

    const/4 v1, 0x1

    :goto_0
    move v0, v1

    .end local v0    # "binderPathSet":Ljava/util/Set;, "Ljava/util/Set<Ljava/net/URL;>;"
    return v0

    .restart local v0    # "binderPathSet":Ljava/util/Set;, "Ljava/util/Set<Ljava/net/URL;>;"
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private static isAndroid()Z
    .locals 3

    .prologue
    .line 340
    const-string/jumbo v1, "java.vendor.url"

    invoke-static {v1}, Lorg/slf4j/helpers/Util;->safeGetSystemProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    move-object v0, v1

    .line 341
    .local v0, "vendor":Ljava/lang/String;
    move-object v1, v0

    if-nez v1, :cond_0

    .line 342
    const/4 v1, 0x0

    move v0, v1

    .line 343
    .end local v0    # "vendor":Ljava/lang/String;
    :goto_0
    return v0

    .restart local v0    # "vendor":Ljava/lang/String;
    :cond_0
    move-object v1, v0

    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "android"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    move v0, v1

    goto :goto_0
.end method

.method private static messageContainsOrgSlf4jImplStaticLoggerBinder(Ljava/lang/String;)Z
    .locals 3

    .prologue
    .line 131
    move-object v0, p0

    .local v0, "msg":Ljava/lang/String;
    move-object v1, v0

    if-nez v1, :cond_0

    .line 132
    const/4 v1, 0x0

    move v0, v1

    .line 137
    .end local v0    # "msg":Ljava/lang/String;
    :goto_0
    return v0

    .line 133
    .restart local v0    # "msg":Ljava/lang/String;
    :cond_0
    move-object v1, v0

    const-string/jumbo v2, "org/slf4j/impl/StaticLoggerBinder"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 134
    const/4 v1, 0x1

    move v0, v1

    goto :goto_0

    .line 135
    :cond_1
    move-object v1, v0

    const-string/jumbo v2, "org.slf4j.impl.StaticLoggerBinder"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 136
    const/4 v1, 0x1

    move v0, v1

    goto :goto_0

    .line 137
    :cond_2
    const/4 v1, 0x0

    move v0, v1

    goto :goto_0
.end method

.method private static nonMatchingClasses(Ljava/lang/Class;Ljava/lang/Class;)Z
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;",
            "Ljava/lang/Class",
            "<*>;)Z"
        }
    .end annotation

    .prologue
    .line 401
    move-object v0, p0

    .local v0, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    move-object v1, p1

    .local v1, "autoComputedCallingClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    move-object v2, v1

    move-object v3, v0

    invoke-virtual {v2, v3}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v2

    if-nez v2, :cond_0

    const/4 v2, 0x1

    :goto_0
    move v0, v2

    .end local v0    # "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    return v0

    .restart local v0    # "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method private static final performInitialization()V
    .locals 2

    .prologue
    .line 124
    invoke-static {}, Lorg/slf4j/LoggerFactory;->bind()V

    .line 125
    sget v0, Lorg/slf4j/LoggerFactory;->INITIALIZATION_STATE:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    .line 126
    invoke-static {}, Lorg/slf4j/LoggerFactory;->versionSanityCheck()V

    .line 128
    :cond_0
    return-void
.end method

.method private static postBindCleanUp()V
    .locals 1

    .prologue
    .line 182
    invoke-static {}, Lorg/slf4j/LoggerFactory;->fixSubstituteLoggers()V

    .line 183
    invoke-static {}, Lorg/slf4j/LoggerFactory;->replayEvents()V

    .line 185
    sget-object v0, Lorg/slf4j/LoggerFactory;->SUBST_FACTORY:Lorg/slf4j/helpers/SubstituteLoggerFactory;

    invoke-virtual {v0}, Lorg/slf4j/helpers/SubstituteLoggerFactory;->clear()V

    .line 186
    return-void
.end method

.method private static replayEvents()V
    .locals 12

    .prologue
    .line 205
    sget-object v8, Lorg/slf4j/LoggerFactory;->SUBST_FACTORY:Lorg/slf4j/helpers/SubstituteLoggerFactory;

    invoke-virtual {v8}, Lorg/slf4j/helpers/SubstituteLoggerFactory;->getEventQueue()Ljava/util/concurrent/LinkedBlockingQueue;

    move-result-object v8

    move-object v0, v8

    .line 206
    .local v0, "queue":Ljava/util/concurrent/LinkedBlockingQueue;, "Ljava/util/concurrent/LinkedBlockingQueue<Lorg/slf4j/event/SubstituteLoggingEvent;>;"
    move-object v8, v0

    invoke-virtual {v8}, Ljava/util/concurrent/LinkedBlockingQueue;->size()I

    move-result v8

    move v1, v8

    .line 207
    .local v1, "queueSize":I
    const/4 v8, 0x0

    move v2, v8

    .line 208
    .local v2, "count":I
    const/16 v8, 0x80

    move v3, v8

    .line 209
    .local v3, "maxDrain":I
    new-instance v8, Ljava/util/ArrayList;

    move-object v11, v8

    move-object v8, v11

    move-object v9, v11

    const/16 v10, 0x80

    invoke-direct {v9, v10}, Ljava/util/ArrayList;-><init>(I)V

    move-object v4, v8

    .line 211
    .local v4, "eventList":Ljava/util/List;, "Ljava/util/List<Lorg/slf4j/event/SubstituteLoggingEvent;>;"
    :goto_0
    move-object v8, v0

    move-object v9, v4

    const/16 v10, 0x80

    invoke-virtual {v8, v9, v10}, Ljava/util/concurrent/LinkedBlockingQueue;->drainTo(Ljava/util/Collection;I)I

    move-result v8

    move v5, v8

    .line 212
    .local v5, "numDrained":I
    move v8, v5

    if-nez v8, :cond_0

    .line 213
    .line 221
    return-void

    .line 214
    :cond_0
    move-object v8, v4

    invoke-interface {v8}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v8

    move-object v6, v8

    :goto_1
    move-object v8, v6

    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_2

    move-object v8, v6

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lorg/slf4j/event/SubstituteLoggingEvent;

    move-object v7, v8

    .line 215
    .local v7, "event":Lorg/slf4j/event/SubstituteLoggingEvent;
    move-object v8, v7

    invoke-static {v8}, Lorg/slf4j/LoggerFactory;->replaySingleEvent(Lorg/slf4j/event/SubstituteLoggingEvent;)V

    .line 216
    move v8, v2

    add-int/lit8 v2, v2, 0x1

    if-nez v8, :cond_1

    .line 217
    move-object v8, v7

    move v9, v1

    invoke-static {v8, v9}, Lorg/slf4j/LoggerFactory;->emitReplayOrSubstituionWarning(Lorg/slf4j/event/SubstituteLoggingEvent;I)V

    .line 218
    :cond_1
    goto :goto_1

    .line 219
    .end local v7    # "event":Lorg/slf4j/event/SubstituteLoggingEvent;
    :cond_2
    move-object v8, v4

    invoke-interface {v8}, Ljava/util/List;->clear()V

    .line 220
    goto :goto_0
.end method

.method private static replaySingleEvent(Lorg/slf4j/event/SubstituteLoggingEvent;)V
    .locals 7

    .prologue
    .line 234
    move-object v0, p0

    .local v0, "event":Lorg/slf4j/event/SubstituteLoggingEvent;
    move-object v3, v0

    if-nez v3, :cond_0

    .line 235
    .line 250
    :goto_0
    return-void

    .line 237
    :cond_0
    move-object v3, v0

    invoke-virtual {v3}, Lorg/slf4j/event/SubstituteLoggingEvent;->getLogger()Lorg/slf4j/helpers/SubstituteLogger;

    move-result-object v3

    move-object v1, v3

    .line 238
    .local v1, "substLogger":Lorg/slf4j/helpers/SubstituteLogger;
    move-object v3, v1

    invoke-virtual {v3}, Lorg/slf4j/helpers/SubstituteLogger;->getName()Ljava/lang/String;

    move-result-object v3

    move-object v2, v3

    .line 239
    .local v2, "loggerName":Ljava/lang/String;
    move-object v3, v1

    invoke-virtual {v3}, Lorg/slf4j/helpers/SubstituteLogger;->isDelegateNull()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 240
    new-instance v3, Ljava/lang/IllegalStateException;

    move-object v6, v3

    move-object v3, v6

    move-object v4, v6

    const-string/jumbo v5, "Delegate logger cannot be null at this state."

    invoke-direct {v4, v5}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 243
    :cond_1
    move-object v3, v1

    invoke-virtual {v3}, Lorg/slf4j/helpers/SubstituteLogger;->isDelegateNOP()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 250
    :goto_1
    goto :goto_0

    .line 245
    :cond_2
    move-object v3, v1

    invoke-virtual {v3}, Lorg/slf4j/helpers/SubstituteLogger;->isDelegateEventAware()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 246
    move-object v3, v1

    move-object v4, v0

    invoke-virtual {v3, v4}, Lorg/slf4j/helpers/SubstituteLogger;->log(Lorg/slf4j/event/LoggingEvent;)V

    goto :goto_1

    .line 248
    :cond_3
    move-object v3, v2

    invoke-static {v3}, Lorg/slf4j/helpers/Util;->report(Ljava/lang/String;)V

    goto :goto_1
.end method

.method private static reportActualBinding(Ljava/util/Set;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set",
            "<",
            "Ljava/net/URL;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 348
    move-object v0, p0

    .local v0, "binderPathSet":Ljava/util/Set;, "Ljava/util/Set<Ljava/net/URL;>;"
    move-object v1, v0

    if-eqz v1, :cond_0

    move-object v1, v0

    invoke-static {v1}, Lorg/slf4j/LoggerFactory;->isAmbiguousStaticLoggerBinderPathSet(Ljava/util/Set;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 349
    new-instance v1, Ljava/lang/StringBuilder;

    move-object v3, v1

    move-object v1, v3

    move-object v2, v3

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Actual binding is of type ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Lorg/slf4j/impl/StaticLoggerBinder;->getSingleton()Lorg/slf4j/impl/StaticLoggerBinder;

    move-result-object v2

    invoke-virtual {v2}, Lorg/slf4j/impl/StaticLoggerBinder;->getLoggerFactoryClassStr()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lorg/slf4j/helpers/Util;->report(Ljava/lang/String;)V

    .line 351
    :cond_0
    return-void
.end method

.method private static reportMultipleBindingAmbiguity(Ljava/util/Set;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set",
            "<",
            "Ljava/net/URL;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 330
    move-object v0, p0

    .local v0, "binderPathSet":Ljava/util/Set;, "Ljava/util/Set<Ljava/net/URL;>;"
    move-object v3, v0

    invoke-static {v3}, Lorg/slf4j/LoggerFactory;->isAmbiguousStaticLoggerBinderPathSet(Ljava/util/Set;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 331
    const-string/jumbo v3, "Class path contains multiple SLF4J bindings."

    invoke-static {v3}, Lorg/slf4j/helpers/Util;->report(Ljava/lang/String;)V

    .line 332
    move-object v3, v0

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    move-object v1, v3

    :goto_0
    move-object v3, v1

    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    move-object v3, v1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/net/URL;

    move-object v2, v3

    .line 333
    .local v2, "path":Ljava/net/URL;
    new-instance v3, Ljava/lang/StringBuilder;

    move-object v5, v3

    move-object v3, v5

    move-object v4, v5

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Found binding in ["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object v4, v2

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "]"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lorg/slf4j/helpers/Util;->report(Ljava/lang/String;)V

    .line 334
    goto :goto_0

    .line 335
    .end local v2    # "path":Ljava/net/URL;
    :cond_0
    const-string/jumbo v3, "See http://www.slf4j.org/codes.html#multiple_bindings for an explanation."

    invoke-static {v3}, Lorg/slf4j/helpers/Util;->report(Ljava/lang/String;)V

    .line 337
    :cond_1
    return-void
.end method

.method static reset()V
    .locals 1

    .prologue
    .line 120
    const/4 v0, 0x0

    sput v0, Lorg/slf4j/LoggerFactory;->INITIALIZATION_STATE:I

    .line 121
    return-void
.end method

.method private static final versionSanityCheck()V
    .locals 9

    .prologue
    .line 268
    :try_start_0
    sget-object v6, Lorg/slf4j/impl/StaticLoggerBinder;->REQUESTED_API_VERSION:Ljava/lang/String;

    move-object v0, v6

    .line 270
    .local v0, "requested":Ljava/lang/String;
    const/4 v6, 0x0

    move v1, v6

    .line 271
    .local v1, "match":Z
    sget-object v6, Lorg/slf4j/LoggerFactory;->API_COMPATIBILITY_LIST:[Ljava/lang/String;

    move-object v2, v6

    move-object v6, v2

    array-length v6, v6

    move v3, v6

    const/4 v6, 0x0

    move v4, v6

    :goto_0
    move v6, v4

    move v7, v3

    if-ge v6, v7, :cond_1

    move-object v6, v2

    move v7, v4

    aget-object v6, v6, v7

    move-object v5, v6

    .line 272
    .local v5, "aAPI_COMPATIBILITY_LIST":Ljava/lang/String;
    move-object v6, v0

    move-object v7, v5

    invoke-virtual {v6, v7}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 273
    const/4 v6, 0x1

    move v1, v6

    .line 271
    :cond_0
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 276
    .end local v5    # "aAPI_COMPATIBILITY_LIST":Ljava/lang/String;
    :cond_1
    move v6, v1

    if-nez v6, :cond_2

    .line 277
    new-instance v6, Ljava/lang/StringBuilder;

    move-object v8, v6

    move-object v6, v8

    move-object v7, v8

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "The requested version "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object v7, v0

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, " by your slf4j binding is not compatible with "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    sget-object v7, Lorg/slf4j/LoggerFactory;->API_COMPATIBILITY_LIST:[Ljava/lang/String;

    .line 278
    invoke-static {v7}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 277
    invoke-static {v6}, Lorg/slf4j/helpers/Util;->report(Ljava/lang/String;)V

    .line 279
    const-string/jumbo v6, "See http://www.slf4j.org/codes.html#version_mismatch for further details."

    invoke-static {v6}, Lorg/slf4j/helpers/Util;->report(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_1

    .line 289
    .line 290
    .end local v0    # "requested":Ljava/lang/String;
    .end local v1    # "match":Z
    :cond_2
    :goto_1
    return-void

    .line 281
    .restart local v0    # "requested":Ljava/lang/String;
    .restart local v1    # "match":Z
    :catch_0
    move-exception v6

    move-object v0, v6

    .line 289
    goto :goto_1

    .line 286
    :catch_1
    move-exception v6

    move-object v0, v6

    .line 288
    .local v0, "e":Ljava/lang/Throwable;
    const-string/jumbo v6, "Unexpected problem occured during version sanity check"

    .end local v1    # "match":Z
    move-object v7, v0

    invoke-static {v6, v7}, Lorg/slf4j/helpers/Util;->report(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1
.end method
