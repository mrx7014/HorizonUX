.class Lcom/samsung/android/ui/preference/SeslSeekBarPreference$2;
.super Ljava/lang/Object;
.source "SeslSeekBarPreference.java"

# interfaces
.implements Landroid/view/View$OnKeyListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/ui/preference/SeslSeekBarPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/ui/preference/SeslSeekBarPreference;


# direct methods
.method constructor <init>(Lcom/samsung/android/ui/preference/SeslSeekBarPreference;)V
    .locals 0
    .param p1, "this$0"    # Lcom/samsung/android/ui/preference/SeslSeekBarPreference;

    .line 85
    iput-object p1, p0, Lcom/samsung/android/ui/preference/SeslSeekBarPreference$2;->this$0:Lcom/samsung/android/ui/preference/SeslSeekBarPreference;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onKey(Landroid/view/View;ILandroid/view/KeyEvent;)Z
    .locals 3
    .param p1, "var1"    # Landroid/view/View;
    .param p2, "var2"    # I
    .param p3, "var3"    # Landroid/view/KeyEvent;

    .line 87
    invoke-virtual {p3}, Landroid/view/KeyEvent;->getAction()I

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 88
    return v1

    .line 89
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/ui/preference/SeslSeekBarPreference$2;->this$0:Lcom/samsung/android/ui/preference/SeslSeekBarPreference;

    iget-boolean v0, v0, Lcom/samsung/android/ui/preference/SeslSeekBarPreference;->mAdjustable:Z

    if-nez v0, :cond_2

    const/16 v0, 0x15

    if-eq p2, v0, :cond_1

    const/16 v0, 0x16

    if-ne p2, v0, :cond_2

    .line 90
    :cond_1
    return v1

    .line 91
    :cond_2
    const/16 v0, 0x17

    if-eq p2, v0, :cond_4

    const/16 v0, 0x42

    if-eq p2, v0, :cond_4

    .line 92
    iget-object v0, p0, Lcom/samsung/android/ui/preference/SeslSeekBarPreference$2;->this$0:Lcom/samsung/android/ui/preference/SeslSeekBarPreference;

    iget-object v0, v0, Lcom/samsung/android/ui/preference/SeslSeekBarPreference;->mSeekBar:Lcom/samsung/android/ui/widget/SeslSeekBar;

    if-nez v0, :cond_3

    .line 93
    const-string v0, "SeslSeekBarPreference"

    const-string v2, "SeekBar view is null and hence cannot be adjusted."

    invoke-static {v0, v2}, Lcom/mesalabs/ten/update/utils/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 94
    return v1

    .line 96
    :cond_3
    iget-object v0, p0, Lcom/samsung/android/ui/preference/SeslSeekBarPreference$2;->this$0:Lcom/samsung/android/ui/preference/SeslSeekBarPreference;

    iget-object v0, v0, Lcom/samsung/android/ui/preference/SeslSeekBarPreference;->mSeekBar:Lcom/samsung/android/ui/widget/SeslSeekBar;

    invoke-virtual {v0, p2, p3}, Lcom/samsung/android/ui/widget/SeslSeekBar;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    return v0

    .line 99
    :cond_4
    return v1
.end method
