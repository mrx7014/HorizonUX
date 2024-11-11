.class public Lcom/samsung/android/ui/widget/SeslToggleSwitch;
.super Lcom/samsung/android/ui/widget/SeslSwitch;
.source "SeslToggleSwitch.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/ui/widget/SeslToggleSwitch$OnBeforeCheckedChangeListener;
    }
.end annotation


# instance fields
.field public mOnBeforeListener:Lcom/samsung/android/ui/widget/SeslToggleSwitch$OnBeforeCheckedChangeListener;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1, "var1"    # Landroid/content/Context;

    .line 25
    invoke-direct {p0, p1}, Lcom/samsung/android/ui/widget/SeslSwitch;-><init>(Landroid/content/Context;)V

    .line 26
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .param p1, "var1"    # Landroid/content/Context;
    .param p2, "var2"    # Landroid/util/AttributeSet;

    .line 29
    invoke-direct {p0, p1, p2}, Lcom/samsung/android/ui/widget/SeslSwitch;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 30
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0
    .param p1, "var1"    # Landroid/content/Context;
    .param p2, "var2"    # Landroid/util/AttributeSet;
    .param p3, "var3"    # I

    .line 33
    invoke-direct {p0, p1, p2, p3}, Lcom/samsung/android/ui/widget/SeslSwitch;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 34
    return-void
.end method


# virtual methods
.method public setChecked(Z)V
    .locals 2
    .param p1, "var1"    # Z

    .line 37
    iget-object v0, p0, Lcom/samsung/android/ui/widget/SeslToggleSwitch;->mOnBeforeListener:Lcom/samsung/android/ui/widget/SeslToggleSwitch$OnBeforeCheckedChangeListener;

    .line 38
    .local v0, "var2":Lcom/samsung/android/ui/widget/SeslToggleSwitch$OnBeforeCheckedChangeListener;
    if-eqz v0, :cond_0

    invoke-interface {v0, p0, p1}, Lcom/samsung/android/ui/widget/SeslToggleSwitch$OnBeforeCheckedChangeListener;->onBeforeCheckedChanged(Lcom/samsung/android/ui/widget/SeslToggleSwitch;Z)Z

    move-result v1

    if-nez v1, :cond_1

    .line 39
    :cond_0
    invoke-super {p0, p1}, Lcom/samsung/android/ui/widget/SeslSwitch;->setChecked(Z)V

    .line 41
    :cond_1
    return-void
.end method

.method public setCheckedInternal(Z)V
    .locals 0
    .param p1, "var1"    # Z

    .line 44
    invoke-super {p0, p1}, Lcom/samsung/android/ui/widget/SeslSwitch;->setChecked(Z)V

    .line 45
    return-void
.end method

.method public setOnBeforeCheckedChangeListener(Lcom/samsung/android/ui/widget/SeslToggleSwitch$OnBeforeCheckedChangeListener;)V
    .locals 0
    .param p1, "var1"    # Lcom/samsung/android/ui/widget/SeslToggleSwitch$OnBeforeCheckedChangeListener;

    .line 48
    iput-object p1, p0, Lcom/samsung/android/ui/widget/SeslToggleSwitch;->mOnBeforeListener:Lcom/samsung/android/ui/widget/SeslToggleSwitch$OnBeforeCheckedChangeListener;

    .line 49
    return-void
.end method
