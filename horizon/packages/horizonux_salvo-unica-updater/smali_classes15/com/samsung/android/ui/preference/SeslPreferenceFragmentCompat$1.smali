.class Lcom/samsung/android/ui/preference/SeslPreferenceFragmentCompat$1;
.super Landroid/os/Handler;
.source "SeslPreferenceFragmentCompat.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/ui/preference/SeslPreferenceFragmentCompat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/ui/preference/SeslPreferenceFragmentCompat;


# direct methods
.method constructor <init>(Lcom/samsung/android/ui/preference/SeslPreferenceFragmentCompat;)V
    .locals 0
    .param p1, "this$0"    # Lcom/samsung/android/ui/preference/SeslPreferenceFragmentCompat;

    .line 50
    iput-object p1, p0, Lcom/samsung/android/ui/preference/SeslPreferenceFragmentCompat$1;->this$0:Lcom/samsung/android/ui/preference/SeslPreferenceFragmentCompat;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2
    .param p1, "var1"    # Landroid/os/Message;

    .line 52
    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 53
    iget-object v0, p0, Lcom/samsung/android/ui/preference/SeslPreferenceFragmentCompat$1;->this$0:Lcom/samsung/android/ui/preference/SeslPreferenceFragmentCompat;

    invoke-virtual {v0}, Lcom/samsung/android/ui/preference/SeslPreferenceFragmentCompat;->bindPreferences()V

    .line 56
    :cond_0
    return-void
.end method
