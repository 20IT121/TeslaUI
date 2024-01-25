#include "system.h"

System::System(QObject *parent)
    : QObject{parent}
    , m_carLocked(true)
    , m_outdoorTemp(23)
    , m_userName("Nesh")
    , m_currentTime("6:30 pm")
{}

bool System::carLocked() const
{
    return m_carLocked;
}

void System::setcarLocked(bool newCarLocked)
{
    if (m_carLocked == newCarLocked)
        return;
    m_carLocked = newCarLocked;
    emit carLockedChanged();
}

int System::outdoorTemp() const
{
    return m_outdoorTemp;
}

void System::setoutdoorTemp(int newOutdoorTemp)
{
    if (m_outdoorTemp == newOutdoorTemp)
        return;
    m_outdoorTemp = newOutdoorTemp;
    emit outdoorTempChanged();
}

QString System::userName() const
{
    return m_userName;
}

void System::setuserName(const QString &newUserName)
{
    if (m_userName == newUserName)
        return;
    m_userName = newUserName;
    emit userNameChanged();
}

QString System::currentTime() const
{
    return m_currentTime;
}

void System::setcurrentTime(const QString &newCurrentTime)
{
    if (m_currentTime == newCurrentTime)
        return;
    m_currentTime = newCurrentTime;
    emit currentTimeChanged();
}
