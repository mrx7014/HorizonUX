.class Lcom/samsung/android/ui/preference/SeslSwitchPreferenceScreen$1;
.super Ljava/lang/Object;
.source "SeslSwitchPreferenceScreen.java"

# interfaces
.implements Landroid/view/View$OnKeyListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/ui/preference/SeslSwitchPreferenceScreen;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/ui/preference/SeslSwitchPreferenceScreen;


# direct methods
.method constructor <init>(Lcom/samsung/android/ui/preference/SeslSwitchPreferenceScreen;)V
    .locals 0
    .param p1, "this$0"    # Lcom/samsung/android/ui/preference/SeslSwitchPreferenceScreen;

    .line 36
    iput-object p1, p0, Lcom/samsung/android/ui/preference/SeslSwitchPreferenceScreen$1;->this$0:Lcom/samsung/android/ui/preference/SeslSwitchPreferenceScreen;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onKey(Landroid/view/View;ILandroid/view/KeyEvent;)Z
    .locals 4
    .param p1, "v"    # Landroid/view/View;
    .param p2, "keyCode"    # I
    .param p3, "event"    # Landroid/view/KeyEvent;

    .line 39
    const/4 v0, 0x0

    .line 40
    .local v0, "handled":Z
    invoke-virtual {p3}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    goto :goto_0

    .line 50
    :pswitch_0
    iget-object v1, p0, Lcom/samsung/android/ui/preference/SeslSwitchPreferenceScreen$1;->this$0:Lcom/samsung/android/ui/preference/SeslSwitchPreferenceScreen;

    invoke-virtual {v1}, Lcom/samsung/android/ui/preference/SeslSwitchPreferenceScreen;->isChecked()Z

    move-result v1

    if-nez v1, :cond_2

    .line 51
    iget-object v1, p0, Lcom/samsung/android/ui/preference/SeslSwitchPreferenceScreen$1;->this$0:Lcom/samsung/android/ui/preference/SeslSwitchPreferenceScreen;

    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/samsung/android/ui/preference/SeslSwitchPreferenceScreen;->callChangeListener(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 52
    iget-object v1, p0, Lcom/samsung/android/ui/preference/SeslSwitchPreferenceScreen$1;->this$0:Lcom/samsung/android/ui/preference/SeslSwitchPreferenceScreen;

    invoke-virtual {v1, v2}, Lcom/samsung/android/ui/preference/SeslSwitchPreferenceScreen;->setChecked(Z)V

    .line 54
    :cond_0
    const/4 v0, 0x1

    goto :goto_0

    .line 42
    :pswitch_1
    iget-object v1, p0, Lcom/samsung/android/ui/preference/SeslSwitchPreferenceScreen$1;->this$0:Lcom/samsung/android/ui/preference/SeslSwitchPreferenceScreen;

    invoke-virtual {v1}, Lcom/samsung/android/ui/preference/SeslSwitchPreferenceScreen;->isChecked()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 43
    iget-object v1, p0, Lcom/samsung/android/ui/preference/SeslSwitchPreferenceScreen$1;->this$0:Lcom/samsung/android/ui/preference/SeslSwitchPreferenceScreen;

    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/samsung/android/ui/preference/SeslSwitchPreferenceScreen;->callChangeListener(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 44
    iget-object v1, p0, Lcom/samsung/android/ui/preference/SeslSwitchPreferenceScreen$1;->this$0:Lcom/samsung/android/ui/preference/SeslSwitchPreferenceScreen;

    invoke-virtual {v1, v2}, Lcom/samsung/android/ui/preference/SeslSwitchPreferenceScreen;->setChecked(Z)V

    .line 46
    :cond_1
    const/4 v0, 0x1

    .line 58
    :cond_2
    :goto_0
    return v0

    nop

    :pswitch_data_0
    .packed-switch 0x15
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
