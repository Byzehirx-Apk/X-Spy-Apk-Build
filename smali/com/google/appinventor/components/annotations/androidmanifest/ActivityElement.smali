.class public interface abstract annotation Lcom/google/appinventor/components/annotations/androidmanifest/ActivityElement;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/annotation/Annotation;


# annotations
.annotation system Ldalvik/annotation/AnnotationDefault;
    value = .subannotation Lcom/google/appinventor/components/annotations/androidmanifest/ActivityElement;
        allowEmbedded = ""
        allowTaskReparenting = ""
        alwaysRetainTaskState = ""
        autoRemoveFromRecents = ""
        banner = ""
        clearTaskOnLaunch = ""
        configChanges = ""
        documentLaunchMode = ""
        enabled = ""
        excludeFromRecents = ""
        exported = ""
        finishOnTaskLaunch = ""
        hardwareAccelerated = ""
        icon = ""
        intentFilters = {}
        label = ""
        launchMode = ""
        maxRecents = ""
        metaDataElements = {}
        multiprocess = ""
        noHistory = ""
        parentActivityName = ""
        permission = ""
        process = ""
        relinquishTaskIdentity = ""
        resizableActivity = ""
        screenOrientation = ""
        stateNotNeeded = ""
        supportPictureInPicture = ""
        taskAffinity = ""
        theme = ""
        uiOptions = ""
        windowSoftInputMode = ""
    .end subannotation
.end annotation

.annotation runtime Ljava/lang/annotation/Retention;
    value = .enum Ljava/lang/annotation/RetentionPolicy;->RUNTIME:Ljava/lang/annotation/RetentionPolicy;
.end annotation

.annotation runtime Ljava/lang/annotation/Target;
    value = {
        .enum Ljava/lang/annotation/ElementType;->TYPE:Ljava/lang/annotation/ElementType;
    }
.end annotation


# virtual methods
.method public abstract allowEmbedded()Ljava/lang/String;
.end method

.method public abstract allowTaskReparenting()Ljava/lang/String;
.end method

.method public abstract alwaysRetainTaskState()Ljava/lang/String;
.end method

.method public abstract autoRemoveFromRecents()Ljava/lang/String;
.end method

.method public abstract banner()Ljava/lang/String;
.end method

.method public abstract clearTaskOnLaunch()Ljava/lang/String;
.end method

.method public abstract configChanges()Ljava/lang/String;
.end method

.method public abstract documentLaunchMode()Ljava/lang/String;
.end method

.method public abstract enabled()Ljava/lang/String;
.end method

.method public abstract excludeFromRecents()Ljava/lang/String;
.end method

.method public abstract exported()Ljava/lang/String;
.end method

.method public abstract finishOnTaskLaunch()Ljava/lang/String;
.end method

.method public abstract hardwareAccelerated()Ljava/lang/String;
.end method

.method public abstract icon()Ljava/lang/String;
.end method

.method public abstract intentFilters()[Lcom/google/appinventor/components/annotations/androidmanifest/IntentFilterElement;
.end method

.method public abstract label()Ljava/lang/String;
.end method

.method public abstract launchMode()Ljava/lang/String;
.end method

.method public abstract maxRecents()Ljava/lang/String;
.end method

.method public abstract metaDataElements()[Lcom/google/appinventor/components/annotations/androidmanifest/MetaDataElement;
.end method

.method public abstract multiprocess()Ljava/lang/String;
.end method

.method public abstract name()Ljava/lang/String;
.end method

.method public abstract noHistory()Ljava/lang/String;
.end method

.method public abstract parentActivityName()Ljava/lang/String;
.end method

.method public abstract permission()Ljava/lang/String;
.end method

.method public abstract process()Ljava/lang/String;
.end method

.method public abstract relinquishTaskIdentity()Ljava/lang/String;
.end method

.method public abstract resizableActivity()Ljava/lang/String;
.end method

.method public abstract screenOrientation()Ljava/lang/String;
.end method

.method public abstract stateNotNeeded()Ljava/lang/String;
.end method

.method public abstract supportPictureInPicture()Ljava/lang/String;
.end method

.method public abstract taskAffinity()Ljava/lang/String;
.end method

.method public abstract theme()Ljava/lang/String;
.end method

.method public abstract uiOptions()Ljava/lang/String;
.end method

.method public abstract windowSoftInputMode()Ljava/lang/String;
.end method
