.class Lcom/samsung/android/ui/preference/SeslPreferenceGroup$1;
.super Ljava/lang/Object;
.source "SeslPreferenceGroup.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/ui/preference/SeslPreferenceGroup;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/ui/preference/SeslPreferenceGroup;


# direct methods
.method constructor <init>(Lcom/samsung/android/ui/preference/SeslPreferenceGroup;)V
    .locals 0
    .param p1, "this$0"    # Lcom/samsung/android/ui/preference/SeslPreferenceGroup;

    .line 40
    iput-object p1, p0, Lcom/samsung/android/ui/preference/SeslPreferenceGroup$1;->this$0:Lcom/samsung/android/ui/preference/SeslPreferenceGroup;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 43
    monitor-enter p0

    .line 44
    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/ui/preference/SeslPreferenceGroup$1;->this$0:Lcom/samsung/android/ui/preference/SeslPreferenceGroup;

    invoke-static {v0}, Lcom/samsung/android/ui/preference/SeslPreferenceGroup;->access$000(Lcom/samsung/android/ui/preference/SeslPreferenceGroup;)Landroidx/collection/SimpleArrayMap;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/collection/SimpleArrayMap;->clear()V

    .line 45
    monitor-exit p0

    .line 46
    return-void

    .line 45
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
