.class public Lcom/google/appinventor/components/runtime/LegoMindstormsNxtBase;
.super Lcom/google/appinventor/components/runtime/AndroidNonvisibleComponent;
.source "SourceFile"

# interfaces
.implements Lcom/google/appinventor/components/runtime/Component;
.implements Lcom/google/appinventor/components/runtime/Deleteable;
.implements Lcom/google/appinventor/components/runtime/util/GeoJSONUtil$PropertyApplication;


# annotations
.annotation runtime Lcom/google/appinventor/components/annotations/SimpleObject;
.end annotation


# static fields
.field private static final qPeHJnCLP0dAOwDPeFIn82vcSIsCMh6KFFn3o4kyIe0RhQKOQXDeyY2LFwPu2GbE:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field protected bluetooth:Lcom/google/appinventor/components/runtime/BluetoothClient;

.field protected final logTag:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    .line 35
    new-instance v0, Ljava/util/HashMap;

    move-object v3, v0

    move-object v0, v3

    move-object v1, v3

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    move-object v3, v0

    move-object v0, v3

    move-object v1, v3

    .line 36
    sput-object v1, Lcom/google/appinventor/components/runtime/LegoMindstormsNxtBase;->qPeHJnCLP0dAOwDPeFIn82vcSIsCMh6KFFn3o4kyIe0RhQKOQXDeyY2LFwPu2GbE:Ljava/util/Map;

    const/16 v1, 0x20

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string/jumbo v2, "Pending communication transaction in progress"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 37
    sget-object v0, Lcom/google/appinventor/components/runtime/LegoMindstormsNxtBase;->qPeHJnCLP0dAOwDPeFIn82vcSIsCMh6KFFn3o4kyIe0RhQKOQXDeyY2LFwPu2GbE:Ljava/util/Map;

    const/16 v1, 0x40

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string/jumbo v2, "Specified mailbox queue is empty"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 38
    sget-object v0, Lcom/google/appinventor/components/runtime/LegoMindstormsNxtBase;->qPeHJnCLP0dAOwDPeFIn82vcSIsCMh6KFFn3o4kyIe0RhQKOQXDeyY2LFwPu2GbE:Ljava/util/Map;

    const/16 v1, 0x81

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string/jumbo v2, "No more handles"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 39
    sget-object v0, Lcom/google/appinventor/components/runtime/LegoMindstormsNxtBase;->qPeHJnCLP0dAOwDPeFIn82vcSIsCMh6KFFn3o4kyIe0RhQKOQXDeyY2LFwPu2GbE:Ljava/util/Map;

    const/16 v1, 0x82

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string/jumbo v2, "No space"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 40
    sget-object v0, Lcom/google/appinventor/components/runtime/LegoMindstormsNxtBase;->qPeHJnCLP0dAOwDPeFIn82vcSIsCMh6KFFn3o4kyIe0RhQKOQXDeyY2LFwPu2GbE:Ljava/util/Map;

    const/16 v1, 0x83

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string/jumbo v2, "No more files"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 41
    sget-object v0, Lcom/google/appinventor/components/runtime/LegoMindstormsNxtBase;->qPeHJnCLP0dAOwDPeFIn82vcSIsCMh6KFFn3o4kyIe0RhQKOQXDeyY2LFwPu2GbE:Ljava/util/Map;

    const/16 v1, 0x84

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string/jumbo v2, "End of file expected"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 42
    sget-object v0, Lcom/google/appinventor/components/runtime/LegoMindstormsNxtBase;->qPeHJnCLP0dAOwDPeFIn82vcSIsCMh6KFFn3o4kyIe0RhQKOQXDeyY2LFwPu2GbE:Ljava/util/Map;

    const/16 v1, 0x85

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string/jumbo v2, "End of file"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 43
    sget-object v0, Lcom/google/appinventor/components/runtime/LegoMindstormsNxtBase;->qPeHJnCLP0dAOwDPeFIn82vcSIsCMh6KFFn3o4kyIe0RhQKOQXDeyY2LFwPu2GbE:Ljava/util/Map;

    const/16 v1, 0x86

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string/jumbo v2, "Not a linear file"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 44
    sget-object v0, Lcom/google/appinventor/components/runtime/LegoMindstormsNxtBase;->qPeHJnCLP0dAOwDPeFIn82vcSIsCMh6KFFn3o4kyIe0RhQKOQXDeyY2LFwPu2GbE:Ljava/util/Map;

    const/16 v1, 0x87

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string/jumbo v2, "File not found"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 45
    sget-object v0, Lcom/google/appinventor/components/runtime/LegoMindstormsNxtBase;->qPeHJnCLP0dAOwDPeFIn82vcSIsCMh6KFFn3o4kyIe0RhQKOQXDeyY2LFwPu2GbE:Ljava/util/Map;

    const/16 v1, 0x88

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string/jumbo v2, "Handle already closed"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 46
    sget-object v0, Lcom/google/appinventor/components/runtime/LegoMindstormsNxtBase;->qPeHJnCLP0dAOwDPeFIn82vcSIsCMh6KFFn3o4kyIe0RhQKOQXDeyY2LFwPu2GbE:Ljava/util/Map;

    const/16 v1, 0x89

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string/jumbo v2, "No linear space"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 47
    sget-object v0, Lcom/google/appinventor/components/runtime/LegoMindstormsNxtBase;->qPeHJnCLP0dAOwDPeFIn82vcSIsCMh6KFFn3o4kyIe0RhQKOQXDeyY2LFwPu2GbE:Ljava/util/Map;

    const/16 v1, 0x8a

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string/jumbo v2, "Undefined error"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 48
    sget-object v0, Lcom/google/appinventor/components/runtime/LegoMindstormsNxtBase;->qPeHJnCLP0dAOwDPeFIn82vcSIsCMh6KFFn3o4kyIe0RhQKOQXDeyY2LFwPu2GbE:Ljava/util/Map;

    const/16 v1, 0x8b

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string/jumbo v2, "File is busy"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 49
    sget-object v0, Lcom/google/appinventor/components/runtime/LegoMindstormsNxtBase;->qPeHJnCLP0dAOwDPeFIn82vcSIsCMh6KFFn3o4kyIe0RhQKOQXDeyY2LFwPu2GbE:Ljava/util/Map;

    const/16 v1, 0x8c

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string/jumbo v2, "No write buffers"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 50
    sget-object v0, Lcom/google/appinventor/components/runtime/LegoMindstormsNxtBase;->qPeHJnCLP0dAOwDPeFIn82vcSIsCMh6KFFn3o4kyIe0RhQKOQXDeyY2LFwPu2GbE:Ljava/util/Map;

    const/16 v1, 0x8d

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string/jumbo v2, "Append not possible"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 51
    sget-object v0, Lcom/google/appinventor/components/runtime/LegoMindstormsNxtBase;->qPeHJnCLP0dAOwDPeFIn82vcSIsCMh6KFFn3o4kyIe0RhQKOQXDeyY2LFwPu2GbE:Ljava/util/Map;

    const/16 v1, 0x8e

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string/jumbo v2, "File is full"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 52
    sget-object v0, Lcom/google/appinventor/components/runtime/LegoMindstormsNxtBase;->qPeHJnCLP0dAOwDPeFIn82vcSIsCMh6KFFn3o4kyIe0RhQKOQXDeyY2LFwPu2GbE:Ljava/util/Map;

    const/16 v1, 0x8f

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string/jumbo v2, "File exists"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 53
    sget-object v0, Lcom/google/appinventor/components/runtime/LegoMindstormsNxtBase;->qPeHJnCLP0dAOwDPeFIn82vcSIsCMh6KFFn3o4kyIe0RhQKOQXDeyY2LFwPu2GbE:Ljava/util/Map;

    const/16 v1, 0x90

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string/jumbo v2, "Module not found"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 54
    sget-object v0, Lcom/google/appinventor/components/runtime/LegoMindstormsNxtBase;->qPeHJnCLP0dAOwDPeFIn82vcSIsCMh6KFFn3o4kyIe0RhQKOQXDeyY2LFwPu2GbE:Ljava/util/Map;

    const/16 v1, 0x91

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string/jumbo v2, "Out of boundary"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 55
    sget-object v0, Lcom/google/appinventor/components/runtime/LegoMindstormsNxtBase;->qPeHJnCLP0dAOwDPeFIn82vcSIsCMh6KFFn3o4kyIe0RhQKOQXDeyY2LFwPu2GbE:Ljava/util/Map;

    const/16 v1, 0x92

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string/jumbo v2, "Illegal file name"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 56
    sget-object v0, Lcom/google/appinventor/components/runtime/LegoMindstormsNxtBase;->qPeHJnCLP0dAOwDPeFIn82vcSIsCMh6KFFn3o4kyIe0RhQKOQXDeyY2LFwPu2GbE:Ljava/util/Map;

    const/16 v1, 0x93

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string/jumbo v2, "Illegal handle"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 57
    sget-object v0, Lcom/google/appinventor/components/runtime/LegoMindstormsNxtBase;->qPeHJnCLP0dAOwDPeFIn82vcSIsCMh6KFFn3o4kyIe0RhQKOQXDeyY2LFwPu2GbE:Ljava/util/Map;

    const/16 v1, 0xbd

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string/jumbo v2, "Request failed (i.e. specified file not found)"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 58
    sget-object v0, Lcom/google/appinventor/components/runtime/LegoMindstormsNxtBase;->qPeHJnCLP0dAOwDPeFIn82vcSIsCMh6KFFn3o4kyIe0RhQKOQXDeyY2LFwPu2GbE:Ljava/util/Map;

    const/16 v1, 0xbe

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string/jumbo v2, "Unknown command opcode"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 59
    sget-object v0, Lcom/google/appinventor/components/runtime/LegoMindstormsNxtBase;->qPeHJnCLP0dAOwDPeFIn82vcSIsCMh6KFFn3o4kyIe0RhQKOQXDeyY2LFwPu2GbE:Ljava/util/Map;

    const/16 v1, 0xbf

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string/jumbo v2, "Insane packet"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 60
    sget-object v0, Lcom/google/appinventor/components/runtime/LegoMindstormsNxtBase;->qPeHJnCLP0dAOwDPeFIn82vcSIsCMh6KFFn3o4kyIe0RhQKOQXDeyY2LFwPu2GbE:Ljava/util/Map;

    const/16 v1, 0xc0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string/jumbo v2, "Data contains out-of-range values"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 61
    sget-object v0, Lcom/google/appinventor/components/runtime/LegoMindstormsNxtBase;->qPeHJnCLP0dAOwDPeFIn82vcSIsCMh6KFFn3o4kyIe0RhQKOQXDeyY2LFwPu2GbE:Ljava/util/Map;

    const/16 v1, 0xdd

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string/jumbo v2, "Communication bus error"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 62
    sget-object v0, Lcom/google/appinventor/components/runtime/LegoMindstormsNxtBase;->qPeHJnCLP0dAOwDPeFIn82vcSIsCMh6KFFn3o4kyIe0RhQKOQXDeyY2LFwPu2GbE:Ljava/util/Map;

    const/16 v1, 0xde

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string/jumbo v2, "No free memory in communication buffer"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 63
    sget-object v0, Lcom/google/appinventor/components/runtime/LegoMindstormsNxtBase;->qPeHJnCLP0dAOwDPeFIn82vcSIsCMh6KFFn3o4kyIe0RhQKOQXDeyY2LFwPu2GbE:Ljava/util/Map;

    const/16 v1, 0xdf

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string/jumbo v2, "Specified channel/connection is not valid"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 64
    sget-object v0, Lcom/google/appinventor/components/runtime/LegoMindstormsNxtBase;->qPeHJnCLP0dAOwDPeFIn82vcSIsCMh6KFFn3o4kyIe0RhQKOQXDeyY2LFwPu2GbE:Ljava/util/Map;

    const/16 v1, 0xe0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string/jumbo v2, "Specified channel/connection not configured or busy"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 65
    sget-object v0, Lcom/google/appinventor/components/runtime/LegoMindstormsNxtBase;->qPeHJnCLP0dAOwDPeFIn82vcSIsCMh6KFFn3o4kyIe0RhQKOQXDeyY2LFwPu2GbE:Ljava/util/Map;

    const/16 v1, 0xec

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string/jumbo v2, "No active program"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 66
    sget-object v0, Lcom/google/appinventor/components/runtime/LegoMindstormsNxtBase;->qPeHJnCLP0dAOwDPeFIn82vcSIsCMh6KFFn3o4kyIe0RhQKOQXDeyY2LFwPu2GbE:Ljava/util/Map;

    const/16 v1, 0xed

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string/jumbo v2, "Illegal size specified"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 67
    sget-object v0, Lcom/google/appinventor/components/runtime/LegoMindstormsNxtBase;->qPeHJnCLP0dAOwDPeFIn82vcSIsCMh6KFFn3o4kyIe0RhQKOQXDeyY2LFwPu2GbE:Ljava/util/Map;

    const/16 v1, 0xee

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string/jumbo v2, "Illegal mailbox queue ID specified"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 68
    sget-object v0, Lcom/google/appinventor/components/runtime/LegoMindstormsNxtBase;->qPeHJnCLP0dAOwDPeFIn82vcSIsCMh6KFFn3o4kyIe0RhQKOQXDeyY2LFwPu2GbE:Ljava/util/Map;

    const/16 v1, 0xef

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string/jumbo v2, "Attempted to access invalid field of a structure"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 69
    sget-object v0, Lcom/google/appinventor/components/runtime/LegoMindstormsNxtBase;->qPeHJnCLP0dAOwDPeFIn82vcSIsCMh6KFFn3o4kyIe0RhQKOQXDeyY2LFwPu2GbE:Ljava/util/Map;

    const/16 v1, 0xf0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string/jumbo v2, "Bad input or output specified"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 70
    sget-object v0, Lcom/google/appinventor/components/runtime/LegoMindstormsNxtBase;->qPeHJnCLP0dAOwDPeFIn82vcSIsCMh6KFFn3o4kyIe0RhQKOQXDeyY2LFwPu2GbE:Ljava/util/Map;

    const/16 v1, 0xfb

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string/jumbo v2, "Insufficient memory available"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 71
    sget-object v0, Lcom/google/appinventor/components/runtime/LegoMindstormsNxtBase;->qPeHJnCLP0dAOwDPeFIn82vcSIsCMh6KFFn3o4kyIe0RhQKOQXDeyY2LFwPu2GbE:Ljava/util/Map;

    const/16 v1, 0xff

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string/jumbo v2, "Bad arguments"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 72
    return-void
.end method

.method protected constructor <init>()V
    .locals 3

    .prologue
    .line 92
    move-object v0, p0

    move-object v1, v0

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Lcom/google/appinventor/components/runtime/AndroidNonvisibleComponent;-><init>(Lcom/google/appinventor/components/runtime/Form;)V

    .line 93
    move-object v1, v0

    const/4 v2, 0x0

    iput-object v2, v1, Lcom/google/appinventor/components/runtime/LegoMindstormsNxtBase;->logTag:Ljava/lang/String;

    .line 94
    return-void
.end method

.method protected constructor <init>(Lcom/google/appinventor/components/runtime/ComponentContainer;Ljava/lang/String;)V
    .locals 5

    .prologue
    .line 84
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, v0

    move-object v4, v1

    invoke-interface {v4}, Lcom/google/appinventor/components/runtime/ComponentContainer;->$form()Lcom/google/appinventor/components/runtime/Form;

    move-result-object v4

    invoke-direct {v3, v4}, Lcom/google/appinventor/components/runtime/AndroidNonvisibleComponent;-><init>(Lcom/google/appinventor/components/runtime/Form;)V

    .line 85
    move-object v3, v0

    move-object v4, v2

    iput-object v4, v3, Lcom/google/appinventor/components/runtime/LegoMindstormsNxtBase;->logTag:Ljava/lang/String;

    .line 86
    return-void
.end method


# virtual methods
.method public BluetoothClient()Lcom/google/appinventor/components/runtime/BluetoothClient;
    .locals 2
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->BEHAVIOR:Lcom/google/appinventor/components/annotations/PropertyCategory;
        description = "The BluetoothClient component that should be used for communication."
        userVisible = false
    .end annotation

    .prologue
    .line 109
    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Lcom/google/appinventor/components/runtime/LegoMindstormsNxtBase;->bluetooth:Lcom/google/appinventor/components/runtime/BluetoothClient;

    move-object v0, v1

    return-object v0
.end method

.method public BluetoothClient(Lcom/google/appinventor/components/runtime/BluetoothClient;)V
    .locals 6
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        defaultValue = ""
        editorType = "BluetoothClient"
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        userVisible = false
    .end annotation

    .prologue
    .line 119
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    iget-object v2, v2, Lcom/google/appinventor/components/runtime/LegoMindstormsNxtBase;->bluetooth:Lcom/google/appinventor/components/runtime/BluetoothClient;

    if-eqz v2, :cond_0

    .line 120
    move-object v2, v0

    iget-object v2, v2, Lcom/google/appinventor/components/runtime/LegoMindstormsNxtBase;->bluetooth:Lcom/google/appinventor/components/runtime/BluetoothClient;

    move-object v3, v0

    invoke-virtual {v2, v3}, Lcom/google/appinventor/components/runtime/BluetoothClient;->removeBluetoothConnectionListener$70312fc3(Lcom/google/appinventor/components/runtime/util/GeoJSONUtil$PropertyApplication;)V

    .line 121
    move-object v2, v0

    iget-object v2, v2, Lcom/google/appinventor/components/runtime/LegoMindstormsNxtBase;->bluetooth:Lcom/google/appinventor/components/runtime/BluetoothClient;

    move-object v3, v0

    invoke-virtual {v2, v3}, Lcom/google/appinventor/components/runtime/BluetoothClient;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME(Lcom/google/appinventor/components/runtime/Component;)V

    .line 122
    move-object v2, v0

    const/4 v3, 0x0

    iput-object v3, v2, Lcom/google/appinventor/components/runtime/LegoMindstormsNxtBase;->bluetooth:Lcom/google/appinventor/components/runtime/BluetoothClient;

    .line 125
    :cond_0
    move-object v2, v1

    if-eqz v2, :cond_1

    .line 126
    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Lcom/google/appinventor/components/runtime/LegoMindstormsNxtBase;->bluetooth:Lcom/google/appinventor/components/runtime/BluetoothClient;

    .line 127
    move-object v2, v0

    iget-object v2, v2, Lcom/google/appinventor/components/runtime/LegoMindstormsNxtBase;->bluetooth:Lcom/google/appinventor/components/runtime/BluetoothClient;

    move-object v3, v0

    const/16 v4, 0x804

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-static {v4}, Ljava/util/Collections;->singleton(Ljava/lang/Object;)Ljava/util/Set;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lcom/google/appinventor/components/runtime/BluetoothClient;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME(Lcom/google/appinventor/components/runtime/Component;Ljava/util/Set;)Z

    move-result v2

    .line 128
    move-object v2, v0

    iget-object v2, v2, Lcom/google/appinventor/components/runtime/LegoMindstormsNxtBase;->bluetooth:Lcom/google/appinventor/components/runtime/BluetoothClient;

    move-object v3, v0

    invoke-virtual {v2, v3}, Lcom/google/appinventor/components/runtime/BluetoothClient;->addBluetoothConnectionListener$70312fc3(Lcom/google/appinventor/components/runtime/util/GeoJSONUtil$PropertyApplication;)V

    .line 129
    move-object v2, v0

    iget-object v2, v2, Lcom/google/appinventor/components/runtime/LegoMindstormsNxtBase;->bluetooth:Lcom/google/appinventor/components/runtime/BluetoothClient;

    invoke-virtual {v2}, Lcom/google/appinventor/components/runtime/BluetoothClient;->IsConnected()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 131
    move-object v2, v0

    move-object v5, v2

    move-object v2, v5

    move-object v3, v5

    iget-object v3, v3, Lcom/google/appinventor/components/runtime/LegoMindstormsNxtBase;->bluetooth:Lcom/google/appinventor/components/runtime/BluetoothClient;

    invoke-virtual {v2, v3}, Lcom/google/appinventor/components/runtime/LegoMindstormsNxtBase;->afterConnect(Lcom/google/appinventor/components/runtime/BluetoothConnectionBase;)V

    .line 134
    :cond_1
    return-void
.end method

.method public final Initialize()V
    .locals 0

    .prologue
    .line 100
    return-void
.end method

.method public afterConnect(Lcom/google/appinventor/components/runtime/BluetoothConnectionBase;)V
    .locals 0

    .prologue
    .line 522
    return-void
.end method

.method public beforeDisconnect(Lcom/google/appinventor/components/runtime/BluetoothConnectionBase;)V
    .locals 0

    .prologue
    .line 527
    return-void
.end method

.method protected final checkBluetooth(Ljava/lang/String;)Z
    .locals 7

    .prologue
    .line 250
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    iget-object v2, v2, Lcom/google/appinventor/components/runtime/LegoMindstormsNxtBase;->bluetooth:Lcom/google/appinventor/components/runtime/BluetoothClient;

    if-nez v2, :cond_0

    .line 251
    move-object v2, v0

    iget-object v2, v2, Lcom/google/appinventor/components/runtime/LegoMindstormsNxtBase;->form:Lcom/google/appinventor/components/runtime/Form;

    move-object v3, v0

    move-object v4, v1

    const/16 v5, 0x191

    const/4 v6, 0x0

    new-array v6, v6, [Ljava/lang/Object;

    invoke-virtual {v2, v3, v4, v5, v6}, Lcom/google/appinventor/components/runtime/Form;->dispatchErrorOccurredEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;I[Ljava/lang/Object;)V

    .line 253
    const/4 v2, 0x0

    move v0, v2

    .line 260
    :goto_0
    return v0

    .line 255
    :cond_0
    move-object v2, v0

    iget-object v2, v2, Lcom/google/appinventor/components/runtime/LegoMindstormsNxtBase;->bluetooth:Lcom/google/appinventor/components/runtime/BluetoothClient;

    invoke-virtual {v2}, Lcom/google/appinventor/components/runtime/BluetoothClient;->IsConnected()Z

    move-result v2

    if-nez v2, :cond_1

    .line 256
    move-object v2, v0

    iget-object v2, v2, Lcom/google/appinventor/components/runtime/LegoMindstormsNxtBase;->form:Lcom/google/appinventor/components/runtime/Form;

    move-object v3, v0

    move-object v4, v1

    const/16 v5, 0x192

    const/4 v6, 0x0

    new-array v6, v6, [Ljava/lang/Object;

    invoke-virtual {v2, v3, v4, v5, v6}, Lcom/google/appinventor/components/runtime/Form;->dispatchErrorOccurredEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;I[Ljava/lang/Object;)V

    .line 258
    const/4 v2, 0x0

    move v0, v2

    goto :goto_0

    .line 260
    :cond_1
    const/4 v2, 0x1

    move v0, v2

    goto :goto_0
.end method

.method protected final convertMotorPortLetterToNumber(C)I
    .locals 7

    .prologue
    .line 463
    move-object v0, p0

    move v1, p1

    move v2, v1

    const/16 v3, 0x41

    if-eq v2, v3, :cond_0

    move v2, v1

    const/16 v3, 0x61

    if-ne v2, v3, :cond_1

    .line 464
    :cond_0
    const/4 v2, 0x0

    move v0, v2

    .line 468
    :goto_0
    return v0

    .line 465
    :cond_1
    move v2, v1

    const/16 v3, 0x42

    if-eq v2, v3, :cond_2

    move v2, v1

    const/16 v3, 0x62

    if-ne v2, v3, :cond_3

    .line 466
    :cond_2
    const/4 v2, 0x1

    move v0, v2

    goto :goto_0

    .line 467
    :cond_3
    move v2, v1

    const/16 v3, 0x43

    if-eq v2, v3, :cond_4

    move v2, v1

    const/16 v3, 0x63

    if-ne v2, v3, :cond_5

    .line 468
    :cond_4
    const/4 v2, 0x2

    move v0, v2

    goto :goto_0

    .line 470
    :cond_5
    new-instance v2, Ljava/lang/IllegalArgumentException;

    move-object v6, v2

    move-object v2, v6

    move-object v3, v6

    const-string/jumbo v4, "Illegal motor port letter "

    move v5, v1

    invoke-static {v5}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method protected final convertMotorPortLetterToNumber(Ljava/lang/String;)I
    .locals 7

    .prologue
    .line 456
    move-object v0, p0

    move-object v1, p1

    move-object v2, v1

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_0

    .line 457
    move-object v2, v0

    move-object v3, v1

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Ljava/lang/String;->charAt(I)C

    move-result v3

    invoke-virtual {v2, v3}, Lcom/google/appinventor/components/runtime/LegoMindstormsNxtBase;->convertMotorPortLetterToNumber(C)I

    move-result v2

    move v0, v2

    return v0

    .line 459
    :cond_0
    new-instance v2, Ljava/lang/IllegalArgumentException;

    move-object v6, v2

    move-object v2, v6

    move-object v3, v6

    const-string/jumbo v4, "Illegal motor port letter "

    move-object v5, v1

    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method protected final convertSensorPortLetterToNumber(C)I
    .locals 7

    .prologue
    .line 481
    move-object v0, p0

    move v1, p1

    move v2, v1

    const/16 v3, 0x31

    if-ne v2, v3, :cond_0

    .line 482
    const/4 v2, 0x0

    move v0, v2

    .line 488
    :goto_0
    return v0

    .line 483
    :cond_0
    move v2, v1

    const/16 v3, 0x32

    if-ne v2, v3, :cond_1

    .line 484
    const/4 v2, 0x1

    move v0, v2

    goto :goto_0

    .line 485
    :cond_1
    move v2, v1

    const/16 v3, 0x33

    if-ne v2, v3, :cond_2

    .line 486
    const/4 v2, 0x2

    move v0, v2

    goto :goto_0

    .line 487
    :cond_2
    move v2, v1

    const/16 v3, 0x34

    if-ne v2, v3, :cond_3

    .line 488
    const/4 v2, 0x3

    move v0, v2

    goto :goto_0

    .line 490
    :cond_3
    new-instance v2, Ljava/lang/IllegalArgumentException;

    move-object v6, v2

    move-object v2, v6

    move-object v3, v6

    const-string/jumbo v4, "Illegal sensor port letter "

    move v5, v1

    invoke-static {v5}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method protected final convertSensorPortLetterToNumber(Ljava/lang/String;)I
    .locals 7

    .prologue
    .line 474
    move-object v0, p0

    move-object v1, p1

    move-object v2, v1

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_0

    .line 475
    move-object v2, v0

    move-object v3, v1

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Ljava/lang/String;->charAt(I)C

    move-result v3

    invoke-virtual {v2, v3}, Lcom/google/appinventor/components/runtime/LegoMindstormsNxtBase;->convertSensorPortLetterToNumber(C)I

    move-result v2

    move v0, v2

    return v0

    .line 477
    :cond_0
    new-instance v2, Ljava/lang/IllegalArgumentException;

    move-object v6, v2

    move-object v2, v6

    move-object v3, v6

    const-string/jumbo v4, "Illegal sensor port letter "

    move-object v5, v1

    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method protected final copyBooleanValueToBytes(Z[BI)V
    .locals 7

    .prologue
    .line 339
    move-object v0, p0

    move v1, p1

    move-object v2, p2

    move v3, p3

    move-object v4, v2

    move v5, v3

    move v6, v1

    if-eqz v6, :cond_0

    const/4 v6, 0x1

    :goto_0
    aput-byte v6, v4, v5

    .line 340
    return-void

    .line 339
    :cond_0
    const/4 v6, 0x0

    goto :goto_0
.end method

.method protected final copySBYTEValueToBytes(I[BI)V
    .locals 7

    .prologue
    .line 343
    move-object v0, p0

    move v1, p1

    move-object v2, p2

    move v3, p3

    move-object v4, v2

    move v5, v3

    move v6, v1

    int-to-byte v6, v6

    aput-byte v6, v4, v5

    .line 344
    return-void
.end method

.method protected final copySLONGValueToBytes(I[BI)V
    .locals 7

    .prologue
    .line 363
    move-object v0, p0

    move v1, p1

    move-object v2, p2

    move v3, p3

    move-object v4, v2

    move v5, v3

    move v6, v1

    int-to-byte v6, v6

    aput-byte v6, v4, v5

    .line 364
    move v4, v1

    const/16 v5, 0x8

    shr-int/lit8 v4, v4, 0x8

    move v1, v4

    .line 365
    move-object v4, v2

    move v5, v3

    const/4 v6, 0x1

    add-int/lit8 v5, v5, 0x1

    move v6, v1

    int-to-byte v6, v6

    aput-byte v6, v4, v5

    .line 366
    move v4, v1

    const/16 v5, 0x8

    shr-int/lit8 v4, v4, 0x8

    move v1, v4

    .line 367
    move-object v4, v2

    move v5, v3

    const/4 v6, 0x2

    add-int/lit8 v5, v5, 0x2

    move v6, v1

    int-to-byte v6, v6

    aput-byte v6, v4, v5

    .line 368
    move v4, v1

    const/16 v5, 0x8

    shr-int/lit8 v4, v4, 0x8

    move v1, v4

    .line 369
    move-object v4, v2

    move v5, v3

    const/4 v6, 0x3

    add-int/lit8 v5, v5, 0x3

    move v6, v1

    int-to-byte v6, v6

    aput-byte v6, v4, v5

    .line 370
    return-void
.end method

.method protected final copySWORDValueToBytes(I[BI)V
    .locals 7

    .prologue
    .line 351
    move-object v0, p0

    move v1, p1

    move-object v2, p2

    move v3, p3

    move-object v4, v2

    move v5, v3

    move v6, v1

    int-to-byte v6, v6

    aput-byte v6, v4, v5

    .line 352
    move v4, v1

    const/16 v5, 0x8

    shr-int/lit8 v4, v4, 0x8

    move v1, v4

    .line 353
    move-object v4, v2

    move v5, v3

    const/4 v6, 0x1

    add-int/lit8 v5, v5, 0x1

    move v6, v1

    int-to-byte v6, v6

    aput-byte v6, v4, v5

    .line 354
    return-void
.end method

.method protected final copyStringValueToBytes(Ljava/lang/String;[BII)V
    .locals 13

    .prologue
    .line 384
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move/from16 v3, p3

    move/from16 v4, p4

    move-object v7, v1

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v7

    move v8, v4

    if-le v7, v8, :cond_0

    .line 385
    move-object v7, v1

    const/4 v8, 0x0

    move v9, v4

    invoke-virtual {v7, v8, v9}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v7

    move-object v1, v7

    .line 389
    :cond_0
    move-object v7, v1

    :try_start_0
    const-string/jumbo v8, "ISO-8859-1"

    invoke-virtual {v7, v8}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v7

    move-object v5, v7

    .line 393
    .line 394
    :goto_0
    move v7, v4

    move-object v8, v5

    array-length v8, v8

    invoke-static {v7, v8}, Ljava/lang/Math;->min(II)I

    move-result v7

    move v6, v7

    .line 395
    move-object v7, v5

    const/4 v8, 0x0

    move-object v9, v2

    move v10, v3

    move v11, v6

    invoke-static {v7, v8, v9, v10, v11}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 396
    return-void

    .line 390
    :catch_0
    move-exception v7

    move-object v6, v7

    .line 391
    move-object v7, v0

    iget-object v7, v7, Lcom/google/appinventor/components/runtime/LegoMindstormsNxtBase;->logTag:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    move-object v12, v8

    move-object v8, v12

    move-object v9, v12

    const-string/jumbo v10, "UnsupportedEncodingException: "

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object v9, v6

    invoke-virtual {v9}, Ljava/io/UnsupportedEncodingException;->getMessage()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    move-result v7

    .line 392
    move-object v7, v1

    invoke-virtual {v7}, Ljava/lang/String;->getBytes()[B

    move-result-object v7

    move-object v5, v7

    goto :goto_0
.end method

.method protected final copyUBYTEValueToBytes(I[BI)V
    .locals 7

    .prologue
    .line 347
    move-object v0, p0

    move v1, p1

    move-object v2, p2

    move v3, p3

    move-object v4, v2

    move v5, v3

    move v6, v1

    int-to-byte v6, v6

    aput-byte v6, v4, v5

    .line 348
    return-void
.end method

.method protected final copyULONGValueToBytes(J[BI)V
    .locals 13

    .prologue
    .line 373
    move-object v1, p0

    move-wide v2, p1

    move-object/from16 v4, p3

    move/from16 v5, p4

    move-object v6, v4

    move v7, v5

    move-wide v8, v2

    const-wide/16 v10, 0xff

    and-long/2addr v8, v10

    long-to-int v8, v8

    int-to-byte v8, v8

    aput-byte v8, v6, v7

    .line 374
    move-wide v6, v2

    const/16 v8, 0x8

    shr-long/2addr v6, v8

    move-wide v2, v6

    .line 375
    move-object v6, v4

    move v7, v5

    const/4 v8, 0x1

    add-int/lit8 v7, v7, 0x1

    move-wide v8, v2

    const-wide/16 v10, 0xff

    and-long/2addr v8, v10

    long-to-int v8, v8

    int-to-byte v8, v8

    aput-byte v8, v6, v7

    .line 376
    move-wide v6, v2

    const/16 v8, 0x8

    shr-long/2addr v6, v8

    move-wide v2, v6

    .line 377
    move-object v6, v4

    move v7, v5

    const/4 v8, 0x2

    add-int/lit8 v7, v7, 0x2

    move-wide v8, v2

    const-wide/16 v10, 0xff

    and-long/2addr v8, v10

    long-to-int v8, v8

    int-to-byte v8, v8

    aput-byte v8, v6, v7

    .line 378
    move-wide v6, v2

    const/16 v8, 0x8

    shr-long/2addr v6, v8

    move-wide v2, v6

    .line 379
    move-object v6, v4

    move v7, v5

    const/4 v8, 0x3

    add-int/lit8 v7, v7, 0x3

    move-wide v8, v2

    const-wide/16 v10, 0xff

    and-long/2addr v8, v10

    long-to-int v8, v8

    int-to-byte v8, v8

    aput-byte v8, v6, v7

    .line 380
    return-void
.end method

.method protected final copyUWORDValueToBytes(I[BI)V
    .locals 7

    .prologue
    .line 357
    move-object v0, p0

    move v1, p1

    move-object v2, p2

    move v3, p3

    move-object v4, v2

    move v5, v3

    move v6, v1

    int-to-byte v6, v6

    aput-byte v6, v4, v5

    .line 358
    move v4, v1

    const/16 v5, 0x8

    shr-int/lit8 v4, v4, 0x8

    move v1, v4

    .line 359
    move-object v4, v2

    move v5, v3

    const/4 v6, 0x1

    add-int/lit8 v5, v5, 0x1

    move v6, v1

    int-to-byte v6, v6

    aput-byte v6, v4, v5

    .line 360
    return-void
.end method

.method protected final evaluateStatus(Ljava/lang/String;[BB)Z
    .locals 16

    .prologue
    .line 291
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move/from16 v3, p3

    move-object v5, v0

    move-object v6, v1

    move-object v7, v2

    move v8, v3

    invoke-virtual {v5, v6, v7, v8}, Lcom/google/appinventor/components/runtime/LegoMindstormsNxtBase;->getStatus(Ljava/lang/String;[BB)I

    move-result v5

    move v15, v5

    move v5, v15

    move v6, v15

    .line 292
    move v2, v6

    if-nez v5, :cond_0

    .line 293
    const/4 v5, 0x1

    move v0, v5

    .line 296
    :goto_0
    return v0

    .line 295
    :cond_0
    move-object v5, v0

    move-object v6, v1

    move v7, v2

    move v3, v7

    move-object v2, v6

    move-object v1, v5

    .line 1320
    move v5, v3

    if-ltz v5, :cond_1

    .line 1326
    sget-object v5, Lcom/google/appinventor/components/runtime/LegoMindstormsNxtBase;->qPeHJnCLP0dAOwDPeFIn82vcSIsCMh6KFFn3o4kyIe0RhQKOQXDeyY2LFwPu2GbE:Ljava/util/Map;

    move v6, v3

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-interface {v5, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    move-object v15, v5

    move-object v5, v15

    move-object v6, v15

    .line 1327
    move-object v4, v6

    if-eqz v5, :cond_2

    .line 1328
    move-object v5, v1

    iget-object v5, v5, Lcom/google/appinventor/components/runtime/LegoMindstormsNxtBase;->form:Lcom/google/appinventor/components/runtime/Form;

    move-object v6, v1

    move-object v7, v2

    const/16 v8, 0x194

    const/4 v9, 0x1

    new-array v9, v9, [Ljava/lang/Object;

    move-object v15, v9

    move-object v9, v15

    move-object v10, v15

    const/4 v11, 0x0

    move-object v12, v4

    aput-object v12, v10, v11

    invoke-virtual {v5, v6, v7, v8, v9}, Lcom/google/appinventor/components/runtime/Form;->dispatchErrorOccurredEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;I[Ljava/lang/Object;)V

    .line 296
    :cond_1
    :goto_1
    const/4 v5, 0x0

    move v0, v5

    goto :goto_0

    .line 1331
    :cond_2
    move-object v5, v1

    iget-object v5, v5, Lcom/google/appinventor/components/runtime/LegoMindstormsNxtBase;->form:Lcom/google/appinventor/components/runtime/Form;

    move-object v6, v1

    move-object v7, v2

    const/16 v8, 0x194

    const/4 v9, 0x1

    new-array v9, v9, [Ljava/lang/Object;

    move-object v15, v9

    move-object v9, v15

    move-object v10, v15

    const/4 v11, 0x0

    new-instance v12, Ljava/lang/StringBuilder;

    move-object v15, v12

    move-object v12, v15

    move-object v13, v15

    const-string/jumbo v14, "Error code 0x"

    invoke-direct {v13, v14}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move v13, v3

    const/16 v14, 0xff

    and-int/lit16 v13, v13, 0xff

    .line 1333
    invoke-static {v13}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    aput-object v12, v10, v11

    .line 1331
    invoke-virtual {v5, v6, v7, v8, v9}, Lcom/google/appinventor/components/runtime/Form;->dispatchErrorOccurredEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;I[Ljava/lang/Object;)V

    goto :goto_1
.end method

.method protected final getBooleanValueFromBytes([BI)Z
    .locals 5

    .prologue
    .line 399
    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v3, v1

    move v4, v2

    aget-byte v3, v3, v4

    if-eqz v3, :cond_0

    const/4 v3, 0x1

    move v0, v3

    :goto_0
    return v0

    :cond_0
    const/4 v3, 0x0

    move v0, v3

    goto :goto_0
.end method

.method protected final getInputValues(Ljava/lang/String;I)[B
    .locals 10

    .prologue
    .line 168
    move-object v0, p0

    move-object v1, p1

    move v2, p2

    const/4 v4, 0x3

    new-array v4, v4, [B

    move-object v9, v4

    move-object v4, v9

    move-object v5, v9

    .line 169
    move-object v3, v5

    const/4 v5, 0x0

    const/4 v6, 0x0

    aput-byte v6, v4, v5

    .line 170
    move-object v4, v3

    const/4 v5, 0x1

    const/4 v6, 0x7

    aput-byte v6, v4, v5

    .line 171
    move-object v4, v0

    move v5, v2

    move-object v6, v3

    const/4 v7, 0x2

    invoke-virtual {v4, v5, v6, v7}, Lcom/google/appinventor/components/runtime/LegoMindstormsNxtBase;->copyUBYTEValueToBytes(I[BI)V

    .line 172
    move-object v4, v0

    move-object v5, v1

    move-object v6, v3

    invoke-virtual {v4, v5, v6}, Lcom/google/appinventor/components/runtime/LegoMindstormsNxtBase;->sendCommandAndReceiveReturnPackage(Ljava/lang/String;[B)[B

    move-result-object v4

    move-object v2, v4

    .line 173
    move-object v4, v0

    move-object v5, v1

    move-object v6, v2

    move-object v7, v3

    const/4 v8, 0x1

    aget-byte v7, v7, v8

    invoke-virtual {v4, v5, v6, v7}, Lcom/google/appinventor/components/runtime/LegoMindstormsNxtBase;->evaluateStatus(Ljava/lang/String;[BB)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 174
    move-object v4, v2

    array-length v4, v4

    const/16 v5, 0x10

    if-ne v4, v5, :cond_0

    .line 175
    move-object v4, v2

    move-object v0, v4

    .line 181
    :goto_0
    return-object v0

    .line 177
    :cond_0
    move-object v4, v0

    iget-object v4, v4, Lcom/google/appinventor/components/runtime/LegoMindstormsNxtBase;->logTag:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    move-object v9, v5

    move-object v5, v9

    move-object v6, v9

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    move-object v6, v1

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, ": unexpected return package length "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object v6, v2

    array-length v6, v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, " (expected 16)"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    move-result v4

    .line 181
    :cond_1
    const/4 v4, 0x0

    move-object v0, v4

    goto :goto_0
.end method

.method protected final getSBYTEValueFromBytes([BI)I
    .locals 5

    .prologue
    .line 403
    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v3, v1

    move v4, v2

    aget-byte v3, v3, v4

    move v0, v3

    return v0
.end method

.method protected final getSLONGValueFromBytes([BI)I
    .locals 7

    .prologue
    .line 421
    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v3, v1

    move v4, v2

    aget-byte v3, v3, v4

    const/16 v4, 0xff

    and-int/lit16 v3, v3, 0xff

    move-object v4, v1

    move v5, v2

    const/4 v6, 0x1

    add-int/lit8 v5, v5, 0x1

    aget-byte v4, v4, v5

    const/16 v5, 0xff

    and-int/lit16 v4, v4, 0xff

    const/16 v5, 0x8

    shl-int/lit8 v4, v4, 0x8

    or-int/2addr v3, v4

    move-object v4, v1

    move v5, v2

    const/4 v6, 0x2

    add-int/lit8 v5, v5, 0x2

    aget-byte v4, v4, v5

    const/16 v5, 0xff

    and-int/lit16 v4, v4, 0xff

    const/16 v5, 0x10

    shl-int/lit8 v4, v4, 0x10

    or-int/2addr v3, v4

    move-object v4, v1

    move v5, v2

    const/4 v6, 0x3

    add-int/lit8 v5, v5, 0x3

    aget-byte v4, v4, v5

    const/16 v5, 0x18

    shl-int/lit8 v4, v4, 0x18

    or-int/2addr v3, v4

    move v0, v3

    return v0
.end method

.method protected final getSWORDValueFromBytes([BI)I
    .locals 7

    .prologue
    .line 411
    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v3, v1

    move v4, v2

    aget-byte v3, v3, v4

    const/16 v4, 0xff

    and-int/lit16 v3, v3, 0xff

    move-object v4, v1

    move v5, v2

    const/4 v6, 0x1

    add-int/lit8 v5, v5, 0x1

    aget-byte v4, v4, v5

    const/16 v5, 0x8

    shl-int/lit8 v4, v4, 0x8

    or-int/2addr v3, v4

    move v0, v3

    return v0
.end method

.method protected final getStatus(Ljava/lang/String;[BB)I
    .locals 9

    .prologue
    .line 301
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move-object v4, v2

    array-length v4, v4

    const/4 v5, 0x3

    if-lt v4, v5, :cond_2

    .line 302
    move-object v4, v2

    const/4 v5, 0x0

    aget-byte v4, v4, v5

    const/4 v5, 0x2

    if-eq v4, v5, :cond_0

    .line 303
    move-object v4, v0

    iget-object v4, v4, Lcom/google/appinventor/components/runtime/LegoMindstormsNxtBase;->logTag:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    move-object v8, v5

    move-object v5, v8

    move-object v6, v8

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    move-object v6, v1

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, ": unexpected return package byte 0: 0x"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object v6, v2

    const/4 v7, 0x0

    aget-byte v6, v6, v7

    const/16 v7, 0xff

    and-int/lit16 v6, v6, 0xff

    .line 304
    invoke-static {v6}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, " (expected 0x02)"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 303
    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    move-result v4

    .line 306
    :cond_0
    move-object v4, v2

    const/4 v5, 0x1

    aget-byte v4, v4, v5

    move v5, v3

    if-eq v4, v5, :cond_1

    .line 307
    move-object v4, v0

    iget-object v4, v4, Lcom/google/appinventor/components/runtime/LegoMindstormsNxtBase;->logTag:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    move-object v8, v5

    move-object v5, v8

    move-object v6, v8

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    move-object v6, v1

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, ": unexpected return package byte 1: 0x"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object v6, v2

    const/4 v7, 0x1

    aget-byte v6, v6, v7

    const/16 v7, 0xff

    and-int/lit16 v6, v6, 0xff

    .line 308
    invoke-static {v6}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, " (expected 0x"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move v6, v3

    const/16 v7, 0xff

    and-int/lit16 v6, v6, 0xff

    .line 309
    invoke-static {v6}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, ")"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 307
    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    move-result v4

    .line 311
    :cond_1
    move-object v4, v0

    move-object v5, v2

    const/4 v6, 0x2

    invoke-virtual {v4, v5, v6}, Lcom/google/appinventor/components/runtime/LegoMindstormsNxtBase;->getUBYTEValueFromBytes([BI)I

    move-result v4

    move v0, v4

    .line 316
    :goto_0
    return v0

    .line 313
    :cond_2
    move-object v4, v0

    iget-object v4, v4, Lcom/google/appinventor/components/runtime/LegoMindstormsNxtBase;->logTag:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    move-object v8, v5

    move-object v5, v8

    move-object v6, v8

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    move-object v6, v1

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, ": unexpected return package length "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object v6, v2

    array-length v6, v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, " (expected >= 3)"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    move-result v4

    .line 316
    const/4 v4, -0x1

    move v0, v4

    goto :goto_0
.end method

.method protected final getStringValueFromBytes([BI)Ljava/lang/String;
    .locals 9

    .prologue
    .line 436
    move-object v0, p0

    move-object v1, p1

    move v2, p2

    const/4 v5, 0x0

    move v3, v5

    .line 437
    move v5, v2

    move v4, v5

    :goto_0
    move v5, v4

    move-object v6, v1

    array-length v6, v6

    if-ge v5, v6, :cond_0

    .line 438
    move-object v5, v1

    move v6, v4

    aget-byte v5, v5, v6

    if-nez v5, :cond_1

    .line 439
    move v5, v4

    move v6, v2

    sub-int/2addr v5, v6

    move v3, v5

    .line 443
    :cond_0
    move-object v5, v0

    move-object v6, v1

    move v7, v2

    move v8, v3

    invoke-virtual {v5, v6, v7, v8}, Lcom/google/appinventor/components/runtime/LegoMindstormsNxtBase;->getStringValueFromBytes([BII)Ljava/lang/String;

    move-result-object v5

    move-object v0, v5

    return-object v0

    .line 437
    :cond_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0
.end method

.method protected final getStringValueFromBytes([BII)Ljava/lang/String;
    .locals 12

    .prologue
    .line 448
    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    :try_start_0
    new-instance v5, Ljava/lang/String;

    move-object v11, v5

    move-object v5, v11

    move-object v6, v11

    move-object v7, v1

    move v8, v2

    move v9, v3

    const-string/jumbo v10, "ISO-8859-1"

    invoke-direct {v6, v7, v8, v9, v10}, Ljava/lang/String;-><init>([BIILjava/lang/String;)V
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, v5

    .line 451
    :goto_0
    return-object v0

    .line 449
    :catch_0
    move-exception v5

    move-object v4, v5

    .line 450
    move-object v5, v0

    iget-object v5, v5, Lcom/google/appinventor/components/runtime/LegoMindstormsNxtBase;->logTag:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    move-object v11, v6

    move-object v6, v11

    move-object v7, v11

    const-string/jumbo v8, "UnsupportedEncodingException: "

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object v7, v4

    invoke-virtual {v7}, Ljava/io/UnsupportedEncodingException;->getMessage()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    move-result v5

    .line 451
    new-instance v5, Ljava/lang/String;

    move-object v11, v5

    move-object v5, v11

    move-object v6, v11

    move-object v7, v1

    move v8, v2

    move v9, v3

    invoke-direct {v6, v7, v8, v9}, Ljava/lang/String;-><init>([BII)V

    move-object v0, v5

    goto :goto_0
.end method

.method protected final getUBYTEValueFromBytes([BI)I
    .locals 5

    .prologue
    .line 407
    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v3, v1

    move v4, v2

    aget-byte v3, v3, v4

    const/16 v4, 0xff

    and-int/lit16 v3, v3, 0xff

    move v0, v3

    return v0
.end method

.method protected final getULONGValueFromBytes([BI)J
    .locals 10

    .prologue
    .line 428
    move-object v1, p0

    move-object v2, p1

    move v3, p2

    move-object v4, v2

    move v5, v3

    aget-byte v4, v4, v5

    int-to-long v4, v4

    const-wide/16 v6, 0xff

    and-long/2addr v4, v6

    move-object v6, v2

    move v7, v3

    const/4 v8, 0x1

    add-int/lit8 v7, v7, 0x1

    aget-byte v6, v6, v7

    int-to-long v6, v6

    const-wide/16 v8, 0xff

    and-long/2addr v6, v8

    const/16 v8, 0x8

    shl-long/2addr v6, v8

    or-long/2addr v4, v6

    move-object v6, v2

    move v7, v3

    const/4 v8, 0x2

    add-int/lit8 v7, v7, 0x2

    aget-byte v6, v6, v7

    int-to-long v6, v6

    const-wide/16 v8, 0xff

    and-long/2addr v6, v8

    const/16 v8, 0x10

    shl-long/2addr v6, v8

    or-long/2addr v4, v6

    move-object v6, v2

    move v7, v3

    const/4 v8, 0x3

    add-int/lit8 v7, v7, 0x3

    aget-byte v6, v6, v7

    int-to-long v6, v6

    const-wide/16 v8, 0xff

    and-long/2addr v6, v8

    const/16 v8, 0x18

    shl-long/2addr v6, v8

    or-long/2addr v4, v6

    move-wide v1, v4

    return-wide v1
.end method

.method protected final getUWORDValueFromBytes([BI)I
    .locals 7

    .prologue
    .line 416
    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v3, v1

    move v4, v2

    aget-byte v3, v3, v4

    const/16 v4, 0xff

    and-int/lit16 v3, v3, 0xff

    move-object v4, v1

    move v5, v2

    const/4 v6, 0x1

    add-int/lit8 v5, v5, 0x1

    aget-byte v4, v4, v5

    const/16 v5, 0xff

    and-int/lit16 v4, v4, 0xff

    const/16 v5, 0x8

    shl-int/lit8 v4, v4, 0x8

    or-int/2addr v3, v4

    move v0, v3

    return v0
.end method

.method protected final lsGetStatus(Ljava/lang/String;I)I
    .locals 10

    .prologue
    .line 193
    move-object v0, p0

    move-object v1, p1

    move v2, p2

    const/4 v4, 0x3

    new-array v4, v4, [B

    move-object v9, v4

    move-object v4, v9

    move-object v5, v9

    .line 194
    move-object v3, v5

    const/4 v5, 0x0

    const/4 v6, 0x0

    aput-byte v6, v4, v5

    .line 195
    move-object v4, v3

    const/4 v5, 0x1

    const/16 v6, 0xe

    aput-byte v6, v4, v5

    .line 196
    move-object v4, v0

    move v5, v2

    move-object v6, v3

    const/4 v7, 0x2

    invoke-virtual {v4, v5, v6, v7}, Lcom/google/appinventor/components/runtime/LegoMindstormsNxtBase;->copyUBYTEValueToBytes(I[BI)V

    .line 197
    move-object v4, v0

    move-object v5, v1

    move-object v6, v3

    invoke-virtual {v4, v5, v6}, Lcom/google/appinventor/components/runtime/LegoMindstormsNxtBase;->sendCommandAndReceiveReturnPackage(Ljava/lang/String;[B)[B

    move-result-object v4

    move-object v2, v4

    .line 198
    move-object v4, v0

    move-object v5, v1

    move-object v6, v2

    move-object v7, v3

    const/4 v8, 0x1

    aget-byte v7, v7, v8

    invoke-virtual {v4, v5, v6, v7}, Lcom/google/appinventor/components/runtime/LegoMindstormsNxtBase;->evaluateStatus(Ljava/lang/String;[BB)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 199
    move-object v4, v2

    array-length v4, v4

    const/4 v5, 0x4

    if-ne v4, v5, :cond_0

    .line 200
    move-object v4, v0

    move-object v5, v2

    const/4 v6, 0x3

    invoke-virtual {v4, v5, v6}, Lcom/google/appinventor/components/runtime/LegoMindstormsNxtBase;->getUBYTEValueFromBytes([BI)I

    move-result v4

    move v0, v4

    .line 206
    :goto_0
    return v0

    .line 202
    :cond_0
    move-object v4, v0

    iget-object v4, v4, Lcom/google/appinventor/components/runtime/LegoMindstormsNxtBase;->logTag:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    move-object v9, v5

    move-object v5, v9

    move-object v6, v9

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    move-object v6, v1

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, ": unexpected return package length "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object v6, v2

    array-length v6, v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, " (expected 4)"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    move-result v4

    .line 206
    :cond_1
    const/4 v4, 0x0

    move v0, v4

    goto :goto_0
.end method

.method protected final lsRead(Ljava/lang/String;I)[B
    .locals 10

    .prologue
    .line 225
    move-object v0, p0

    move-object v1, p1

    move v2, p2

    const/4 v4, 0x3

    new-array v4, v4, [B

    move-object v9, v4

    move-object v4, v9

    move-object v5, v9

    .line 226
    move-object v3, v5

    const/4 v5, 0x0

    const/4 v6, 0x0

    aput-byte v6, v4, v5

    .line 227
    move-object v4, v3

    const/4 v5, 0x1

    const/16 v6, 0x10

    aput-byte v6, v4, v5

    .line 228
    move-object v4, v0

    move v5, v2

    move-object v6, v3

    const/4 v7, 0x2

    invoke-virtual {v4, v5, v6, v7}, Lcom/google/appinventor/components/runtime/LegoMindstormsNxtBase;->copyUBYTEValueToBytes(I[BI)V

    .line 229
    move-object v4, v0

    move-object v5, v1

    move-object v6, v3

    invoke-virtual {v4, v5, v6}, Lcom/google/appinventor/components/runtime/LegoMindstormsNxtBase;->sendCommandAndReceiveReturnPackage(Ljava/lang/String;[B)[B

    move-result-object v4

    move-object v2, v4

    .line 230
    move-object v4, v0

    move-object v5, v1

    move-object v6, v2

    move-object v7, v3

    const/4 v8, 0x1

    aget-byte v7, v7, v8

    invoke-virtual {v4, v5, v6, v7}, Lcom/google/appinventor/components/runtime/LegoMindstormsNxtBase;->evaluateStatus(Ljava/lang/String;[BB)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 231
    move-object v4, v2

    array-length v4, v4

    const/16 v5, 0x14

    if-ne v4, v5, :cond_0

    .line 232
    move-object v4, v2

    move-object v0, v4

    .line 238
    :goto_0
    return-object v0

    .line 234
    :cond_0
    move-object v4, v0

    iget-object v4, v4, Lcom/google/appinventor/components/runtime/LegoMindstormsNxtBase;->logTag:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    move-object v9, v5

    move-object v5, v9

    move-object v6, v9

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    move-object v6, v1

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, ": unexpected return package length "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object v6, v2

    array-length v6, v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, " (expected 20)"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    move-result v4

    .line 238
    :cond_1
    const/4 v4, 0x0

    move-object v0, v4

    goto :goto_0
.end method

.method protected final lsWrite(Ljava/lang/String;I[BI)V
    .locals 12

    .prologue
    .line 210
    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v3, p3

    move/from16 v4, p4

    move-object v6, v3

    array-length v6, v6

    const/16 v7, 0x10

    if-le v6, v7, :cond_0

    .line 211
    new-instance v6, Ljava/lang/IllegalArgumentException;

    move-object v11, v6

    move-object v6, v11

    move-object v7, v11

    const-string/jumbo v8, "length must be <= 16"

    invoke-direct {v7, v8}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 213
    :cond_0
    const/4 v6, 0x5

    move-object v7, v3

    array-length v7, v7

    add-int/2addr v6, v7

    new-array v6, v6, [B

    move-object v11, v6

    move-object v6, v11

    move-object v7, v11

    .line 214
    move-object v5, v7

    const/4 v7, 0x0

    const/4 v8, 0x0

    aput-byte v8, v6, v7

    .line 215
    move-object v6, v5

    const/4 v7, 0x1

    const/16 v8, 0xf

    aput-byte v8, v6, v7

    .line 216
    move-object v6, v0

    move v7, v2

    move-object v8, v5

    const/4 v9, 0x2

    invoke-virtual {v6, v7, v8, v9}, Lcom/google/appinventor/components/runtime/LegoMindstormsNxtBase;->copyUBYTEValueToBytes(I[BI)V

    .line 217
    move-object v6, v0

    move-object v7, v3

    array-length v7, v7

    move-object v8, v5

    const/4 v9, 0x3

    invoke-virtual {v6, v7, v8, v9}, Lcom/google/appinventor/components/runtime/LegoMindstormsNxtBase;->copyUBYTEValueToBytes(I[BI)V

    .line 218
    move-object v6, v0

    move v7, v4

    move-object v8, v5

    const/4 v9, 0x4

    invoke-virtual {v6, v7, v8, v9}, Lcom/google/appinventor/components/runtime/LegoMindstormsNxtBase;->copyUBYTEValueToBytes(I[BI)V

    .line 219
    move-object v6, v3

    const/4 v7, 0x0

    move-object v8, v5

    const/4 v9, 0x5

    move-object v10, v3

    array-length v10, v10

    invoke-static {v6, v7, v8, v9, v10}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 220
    move-object v6, v0

    move-object v7, v1

    move-object v8, v5

    invoke-virtual {v6, v7, v8}, Lcom/google/appinventor/components/runtime/LegoMindstormsNxtBase;->sendCommandAndReceiveReturnPackage(Ljava/lang/String;[B)[B

    move-result-object v6

    move-object v2, v6

    .line 221
    move-object v6, v0

    move-object v7, v1

    move-object v8, v2

    move-object v9, v5

    const/4 v10, 0x1

    aget-byte v9, v9, v10

    invoke-virtual {v6, v7, v8, v9}, Lcom/google/appinventor/components/runtime/LegoMindstormsNxtBase;->evaluateStatus(Ljava/lang/String;[BB)Z

    move-result v6

    .line 222
    return-void
.end method

.method public onDelete()V
    .locals 3

    .prologue
    .line 533
    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Lcom/google/appinventor/components/runtime/LegoMindstormsNxtBase;->bluetooth:Lcom/google/appinventor/components/runtime/BluetoothClient;

    if-eqz v1, :cond_0

    .line 534
    move-object v1, v0

    iget-object v1, v1, Lcom/google/appinventor/components/runtime/LegoMindstormsNxtBase;->bluetooth:Lcom/google/appinventor/components/runtime/BluetoothClient;

    move-object v2, v0

    invoke-virtual {v1, v2}, Lcom/google/appinventor/components/runtime/BluetoothClient;->removeBluetoothConnectionListener$70312fc3(Lcom/google/appinventor/components/runtime/util/GeoJSONUtil$PropertyApplication;)V

    .line 535
    move-object v1, v0

    iget-object v1, v1, Lcom/google/appinventor/components/runtime/LegoMindstormsNxtBase;->bluetooth:Lcom/google/appinventor/components/runtime/BluetoothClient;

    move-object v2, v0

    invoke-virtual {v1, v2}, Lcom/google/appinventor/components/runtime/BluetoothClient;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME(Lcom/google/appinventor/components/runtime/Component;)V

    .line 536
    move-object v1, v0

    const/4 v2, 0x0

    iput-object v2, v1, Lcom/google/appinventor/components/runtime/LegoMindstormsNxtBase;->bluetooth:Lcom/google/appinventor/components/runtime/BluetoothClient;

    .line 538
    :cond_0
    return-void
.end method

.method protected final resetInputScaledValue(Ljava/lang/String;I)V
    .locals 9

    .prologue
    .line 185
    move-object v0, p0

    move-object v1, p1

    move v2, p2

    const/4 v4, 0x3

    new-array v4, v4, [B

    move-object v8, v4

    move-object v4, v8

    move-object v5, v8

    .line 186
    move-object v3, v5

    const/4 v5, 0x0

    const/16 v6, -0x80

    aput-byte v6, v4, v5

    .line 187
    move-object v4, v3

    const/4 v5, 0x1

    const/16 v6, 0x8

    aput-byte v6, v4, v5

    .line 188
    move-object v4, v0

    move v5, v2

    move-object v6, v3

    const/4 v7, 0x2

    invoke-virtual {v4, v5, v6, v7}, Lcom/google/appinventor/components/runtime/LegoMindstormsNxtBase;->copyUBYTEValueToBytes(I[BI)V

    .line 189
    move-object v4, v0

    move-object v5, v1

    move-object v6, v3

    invoke-virtual {v4, v5, v6}, Lcom/google/appinventor/components/runtime/LegoMindstormsNxtBase;->sendCommand(Ljava/lang/String;[B)V

    .line 190
    return-void
.end method

.method protected final sanitizePower(I)I
    .locals 7

    .prologue
    .line 494
    move-object v0, p0

    move v1, p1

    move v2, v1

    const/16 v3, -0x64

    if-ge v2, v3, :cond_0

    .line 495
    move-object v2, v0

    iget-object v2, v2, Lcom/google/appinventor/components/runtime/LegoMindstormsNxtBase;->logTag:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    move-object v6, v3

    move-object v3, v6

    move-object v4, v6

    const-string/jumbo v5, "power "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move v4, v1

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, " is invalid, using -100."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    .line 496
    const/16 v2, -0x64

    move v1, v2

    .line 498
    :cond_0
    move v2, v1

    const/16 v3, 0x64

    if-le v2, v3, :cond_1

    .line 499
    move-object v2, v0

    iget-object v2, v2, Lcom/google/appinventor/components/runtime/LegoMindstormsNxtBase;->logTag:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    move-object v6, v3

    move-object v3, v6

    move-object v4, v6

    const-string/jumbo v5, "power "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move v4, v1

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, " is invalid, using 100."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    .line 500
    const/16 v2, 0x64

    move v1, v2

    .line 502
    :cond_1
    move v2, v1

    move v0, v2

    return v0
.end method

.method protected final sanitizeTurnRatio(I)I
    .locals 7

    .prologue
    .line 506
    move-object v0, p0

    move v1, p1

    move v2, v1

    const/16 v3, -0x64

    if-ge v2, v3, :cond_0

    .line 507
    move-object v2, v0

    iget-object v2, v2, Lcom/google/appinventor/components/runtime/LegoMindstormsNxtBase;->logTag:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    move-object v6, v3

    move-object v3, v6

    move-object v4, v6

    const-string/jumbo v5, "turnRatio "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move v4, v1

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, " is invalid, using -100."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    .line 508
    const/16 v2, -0x64

    move v1, v2

    .line 510
    :cond_0
    move v2, v1

    const/16 v3, 0x64

    if-le v2, v3, :cond_1

    .line 511
    move-object v2, v0

    iget-object v2, v2, Lcom/google/appinventor/components/runtime/LegoMindstormsNxtBase;->logTag:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    move-object v6, v3

    move-object v3, v6

    move-object v4, v6

    const-string/jumbo v5, "turnRatio "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move v4, v1

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, " is invalid, using 100."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    .line 512
    const/16 v2, 0x64

    move v1, v2

    .line 514
    :cond_1
    move v2, v1

    move v0, v2

    return v0
.end method

.method protected final sendCommand(Ljava/lang/String;[B)V
    .locals 8

    .prologue
    .line 269
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    const/4 v4, 0x2

    new-array v4, v4, [B

    move-object v3, v4

    .line 270
    move-object v4, v0

    move-object v5, v2

    array-length v5, v5

    move-object v6, v3

    const/4 v7, 0x0

    invoke-virtual {v4, v5, v6, v7}, Lcom/google/appinventor/components/runtime/LegoMindstormsNxtBase;->copyUWORDValueToBytes(I[BI)V

    .line 271
    move-object v4, v0

    iget-object v4, v4, Lcom/google/appinventor/components/runtime/LegoMindstormsNxtBase;->bluetooth:Lcom/google/appinventor/components/runtime/BluetoothClient;

    move-object v5, v1

    move-object v6, v3

    invoke-virtual {v4, v5, v6}, Lcom/google/appinventor/components/runtime/BluetoothClient;->write(Ljava/lang/String;[B)V

    .line 272
    move-object v4, v0

    iget-object v4, v4, Lcom/google/appinventor/components/runtime/LegoMindstormsNxtBase;->bluetooth:Lcom/google/appinventor/components/runtime/BluetoothClient;

    move-object v5, v1

    move-object v6, v2

    invoke-virtual {v4, v5, v6}, Lcom/google/appinventor/components/runtime/BluetoothClient;->write(Ljava/lang/String;[B)V

    .line 273
    return-void
.end method

.method protected final sendCommandAndReceiveReturnPackage(Ljava/lang/String;[B)[B
    .locals 10

    .prologue
    .line 264
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v4, v0

    move-object v5, v1

    move-object v6, v2

    invoke-virtual {v4, v5, v6}, Lcom/google/appinventor/components/runtime/LegoMindstormsNxtBase;->sendCommand(Ljava/lang/String;[B)V

    .line 265
    move-object v4, v0

    move-object v5, v1

    move-object v2, v5

    move-object v9, v4

    move-object v4, v9

    move-object v5, v9

    .line 1276
    move-object v1, v5

    iget-object v4, v4, Lcom/google/appinventor/components/runtime/LegoMindstormsNxtBase;->bluetooth:Lcom/google/appinventor/components/runtime/BluetoothClient;

    move-object v5, v2

    const/4 v6, 0x2

    invoke-virtual {v4, v5, v6}, Lcom/google/appinventor/components/runtime/BluetoothClient;->read(Ljava/lang/String;I)[B

    move-result-object v4

    move-object v9, v4

    move-object v4, v9

    move-object v5, v9

    .line 1277
    move-object v3, v5

    array-length v4, v4

    const/4 v5, 0x2

    if-ne v4, v5, :cond_0

    .line 1278
    move-object v4, v1

    move-object v5, v3

    const/4 v6, 0x0

    invoke-virtual {v4, v5, v6}, Lcom/google/appinventor/components/runtime/LegoMindstormsNxtBase;->getUWORDValueFromBytes([BI)I

    move-result v4

    move v3, v4

    .line 1279
    move-object v4, v1

    iget-object v4, v4, Lcom/google/appinventor/components/runtime/LegoMindstormsNxtBase;->bluetooth:Lcom/google/appinventor/components/runtime/BluetoothClient;

    move-object v5, v2

    move v6, v3

    invoke-virtual {v4, v5, v6}, Lcom/google/appinventor/components/runtime/BluetoothClient;->read(Ljava/lang/String;I)[B

    move-result-object v4

    move-object v9, v4

    move-object v4, v9

    move-object v5, v9

    .line 1280
    move-object v3, v5

    array-length v4, v4

    const/4 v5, 0x3

    if-lt v4, v5, :cond_0

    .line 1281
    move-object v4, v3

    move-object v0, v4

    :goto_0
    return-object v0

    .line 1285
    :cond_0
    move-object v4, v1

    iget-object v4, v4, Lcom/google/appinventor/components/runtime/LegoMindstormsNxtBase;->form:Lcom/google/appinventor/components/runtime/Form;

    move-object v5, v1

    move-object v6, v2

    const/16 v7, 0x193

    const/4 v8, 0x0

    new-array v8, v8, [Ljava/lang/Object;

    invoke-virtual {v4, v5, v6, v7, v8}, Lcom/google/appinventor/components/runtime/Form;->dispatchErrorOccurredEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;I[Ljava/lang/Object;)V

    .line 1287
    const/4 v4, 0x0

    new-array v4, v4, [B

    .line 265
    move-object v0, v4

    goto :goto_0
.end method

.method protected final setInputMode(Ljava/lang/String;III)V
    .locals 11

    .prologue
    .line 158
    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    const/4 v6, 0x5

    new-array v6, v6, [B

    move-object v10, v6

    move-object v6, v10

    move-object v7, v10

    .line 159
    move-object v5, v7

    const/4 v7, 0x0

    const/16 v8, -0x80

    aput-byte v8, v6, v7

    .line 160
    move-object v6, v5

    const/4 v7, 0x1

    const/4 v8, 0x5

    aput-byte v8, v6, v7

    .line 161
    move-object v6, v0

    move v7, v2

    move-object v8, v5

    const/4 v9, 0x2

    invoke-virtual {v6, v7, v8, v9}, Lcom/google/appinventor/components/runtime/LegoMindstormsNxtBase;->copyUBYTEValueToBytes(I[BI)V

    .line 162
    move-object v6, v0

    move v7, v3

    move-object v8, v5

    const/4 v9, 0x3

    invoke-virtual {v6, v7, v8, v9}, Lcom/google/appinventor/components/runtime/LegoMindstormsNxtBase;->copyUBYTEValueToBytes(I[BI)V

    .line 163
    move-object v6, v0

    move v7, v4

    move-object v8, v5

    const/4 v9, 0x4

    invoke-virtual {v6, v7, v8, v9}, Lcom/google/appinventor/components/runtime/LegoMindstormsNxtBase;->copyUBYTEValueToBytes(I[BI)V

    .line 164
    move-object v6, v0

    move-object v7, v1

    move-object v8, v5

    invoke-virtual {v6, v7, v8}, Lcom/google/appinventor/components/runtime/LegoMindstormsNxtBase;->sendCommand(Ljava/lang/String;[B)V

    .line 165
    return-void
.end method

.method protected final setOutputState(Ljava/lang/String;IIIIIIJ)V
    .locals 18

    .prologue
    .line 138
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p2

    move/from16 v3, p3

    move/from16 v4, p4

    move/from16 v5, p5

    move/from16 v6, p6

    move/from16 v7, p7

    move-wide/from16 v8, p8

    move-object v11, v0

    move v12, v3

    invoke-virtual {v11, v12}, Lcom/google/appinventor/components/runtime/LegoMindstormsNxtBase;->sanitizePower(I)I

    move-result v11

    move v3, v11

    .line 139
    const/16 v11, 0xc

    new-array v11, v11, [B

    move-object/from16 v16, v11

    move-object/from16 v11, v16

    move-object/from16 v12, v16

    .line 140
    move-object v10, v12

    const/4 v12, 0x0

    const/16 v13, -0x80

    aput-byte v13, v11, v12

    .line 141
    move-object v11, v10

    const/4 v12, 0x1

    const/4 v13, 0x4

    aput-byte v13, v11, v12

    .line 142
    move-object v11, v0

    move v12, v2

    move-object v13, v10

    const/4 v14, 0x2

    invoke-virtual {v11, v12, v13, v14}, Lcom/google/appinventor/components/runtime/LegoMindstormsNxtBase;->copyUBYTEValueToBytes(I[BI)V

    .line 143
    move-object v11, v0

    move v12, v3

    move-object v13, v10

    const/4 v14, 0x3

    invoke-virtual {v11, v12, v13, v14}, Lcom/google/appinventor/components/runtime/LegoMindstormsNxtBase;->copySBYTEValueToBytes(I[BI)V

    .line 144
    move-object v11, v0

    move v12, v4

    move-object v13, v10

    const/4 v14, 0x4

    invoke-virtual {v11, v12, v13, v14}, Lcom/google/appinventor/components/runtime/LegoMindstormsNxtBase;->copyUBYTEValueToBytes(I[BI)V

    .line 145
    move-object v11, v0

    move v12, v5

    move-object v13, v10

    const/4 v14, 0x5

    invoke-virtual {v11, v12, v13, v14}, Lcom/google/appinventor/components/runtime/LegoMindstormsNxtBase;->copyUBYTEValueToBytes(I[BI)V

    .line 146
    move-object v11, v0

    move v12, v6

    move-object v13, v10

    const/4 v14, 0x6

    invoke-virtual {v11, v12, v13, v14}, Lcom/google/appinventor/components/runtime/LegoMindstormsNxtBase;->copySBYTEValueToBytes(I[BI)V

    .line 147
    move-object v11, v0

    move v12, v7

    move-object v13, v10

    const/4 v14, 0x7

    invoke-virtual {v11, v12, v13, v14}, Lcom/google/appinventor/components/runtime/LegoMindstormsNxtBase;->copyUBYTEValueToBytes(I[BI)V

    .line 153
    move-object v11, v0

    move-wide v12, v8

    move-object v14, v10

    const/16 v15, 0x8

    invoke-virtual {v11, v12, v13, v14, v15}, Lcom/google/appinventor/components/runtime/LegoMindstormsNxtBase;->copyULONGValueToBytes(J[BI)V

    .line 154
    move-object v11, v0

    move-object v12, v1

    move-object v13, v10

    invoke-virtual {v11, v12, v13}, Lcom/google/appinventor/components/runtime/LegoMindstormsNxtBase;->sendCommand(Ljava/lang/String;[B)V

    .line 155
    return-void
.end method
